import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../app_state/appstate.dart';
import '../../../component/error_dialog.dart';
import '../../../component/input.dart';
import '../../../component/loading_widget.dart';
import '../../../component/misc.dart';
import '../../../component/transparent_container.dart';
import '../../../local_storage/hive_storage.dart';
import '../../../res/size_config.dart';
import '../../../validation/validation_mixin.dart';
import '../controller/login_controller.dart';
import '../models/usermodel.dart';
import '../repository/repository.dart';
import '../widget/widget.dart';

final updateProfileNotifier =
    StateNotifierProvider<LoginController, AppState>((ref) {
  return LoginController(ref.watch(loginRepository));
});

class InfoScreen extends StatelessWidget with ValidationMixin {
  InfoScreen({Key? key, this.email, this.fullName}) : super(key: key);
  String? fullName, email;
  final _formKey = GlobalKey<FormState>();
  final HiveStorage storage = HiveStorage();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final height = SizeConfig.safeBlockVertical ?? 200;
    final width = SizeConfig.safeBlockHorizontal ?? 100;
    return Scaffold(
      body: ProviderListener(
        provider: updateProfileNotifier,
        onChange: (context, state) {
          if (state == AppState.loading()) {
            showDialog(
                context: context, builder: (context) => const LoadingWidgets());
          } else if (state is AppStateData) {
            Navigator.pop(context);
            state.data as AccessTokenModel;

             storage.userName=state.data.user_data?.name??'';
            storage.imageUrl=state.data.user_data?.image??'';
            // context.router.replace(const DashboardScreenRoute());
          } else if (state is AppStateError) {
            Navigator.pop(context);
                    ErrorDialog(
              enumvalue: ErrorEnum.error,
              context: context,
              errorMessage: state.e.toString()
            );
          }
        },
        child: buildStackScreenWithBGImage(
          height,
          width,
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: height * 3,
                  ),
                  SizedBox(
                    width: 300.w,
                    child: AppTextInput(
                      'Full Name',
                      validator: validateRequired,
                      initialValue: fullName,
                      icon: Icons.description,
                      onSaved: (value) {
                        fullName = value;
                      },
                      textInputType: TextInputType.name,
                      style: TextStyle(
                          fontFamily: 'Sansation',
                          fontSize: width * 5,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: height * 3,
                  ),
                  SizedBox(
                    width: 300.w,
                    child: AppTextInput(
                      'Email',
                      validator: emailValidateForLogin,
                      initialValue: email,
                      icon: Icons.email,
                      onSaved: (value) {
                        email = value;
                      },
                      textInputType: TextInputType.emailAddress,
                      style: TextStyle(
                          fontFamily: 'Sansation',
                          fontSize: width * 5,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: height * 8,
                  ),
                  InkWell(
                    onTap: () {
                      if (_formKey.currentState?.validate() == true) {
                        _formKey.currentState?.save();
                        final _formData = dio.FormData.fromMap({
                          'name': fullName,
                          'email': email,
                        });

                        context
                            .read(updateProfileNotifier.notifier)
                            .profileUpdateProvider(formData: _formData);
                      }
                    },
                    child: TrasparentContainer(
                      width: width,
                      height: height,
                      child: Center(
                        child: BoldText(
                          'Next',
                          fontSize: width * 5,
                          weight: FontWeight.w200,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          './assets/background/girl2.png',
        ),
      ),
    );
  }
}
