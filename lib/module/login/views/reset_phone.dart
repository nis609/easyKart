
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../app_state/appstate.dart';
import '../../../component/error_dialog.dart';
import '../../../component/input.dart';
import '../../../component/loading_widget.dart';
import '../../../component/misc.dart';
import '../../../res/size_config.dart';
import '../../../validation/validation_mixin.dart';
import '../controller/login_controller.dart';
import '../repository/repository.dart';
import '../widget/widget.dart';

final optStateNotifier =
    StateNotifierProvider<LoginController, AppState>((ref) {
  return LoginController(ref.watch(loginRepository));
});

class ResetPhone extends StatelessWidget with ValidationMixin {
  ResetPhone({Key? key, required this.passwordReset}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey();

  String? phoneNumber;

  final bool passwordReset;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final height = SizeConfig.safeBlockVertical ?? 400;
    final width = SizeConfig.safeBlockHorizontal ?? 300;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: ProviderListener(
        provider: optStateNotifier,
        onChange: (context, state) {
          if (state == AppState.loading()) {
            showDialog(
                context: context, builder: (context) => const LoadingWidgets());
          } else if (state is AppStateData) {
            Navigator.pop(context);
            state.data.fold((l) {
              // l as ResetMobileModel;
              if (passwordReset) {

              } else {

              }
            }, (r) {
                      ErrorDialog(
              enumvalue: ErrorEnum.error,
              context: context,
              errorMessage: r.errors.toString()
            );
            });
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
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  width: width * 70,
                  height: height * 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BoldText(
                        passwordReset
                            ? 'Reset password with mobile number'
                            : 'Change Mobile number',
                        fontSize: width * 5,
                      ),
                      BoldText(
                        passwordReset
                            ? 'Enter your mobile number'
                            : 'Reset your Mobile Number',
                        fontSize: width * 3.5,
                        weight: FontWeight.w200,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 6,
                ),
                SizedBox(
                  width: 300.w,
                  child: Form(
                    key: _formKey,
                    child: AppTextInput(
                      'Phone number',
                      validator: validatePhone,
                      icon: Icons.phone,
                      onSaved: (value) {
                        phoneNumber = value;
                      },
                      textInputType: TextInputType.phone,
                      style: TextStyle(
                          fontFamily: 'Sansation',
                          fontSize: width * 5,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
                buildTransparentButton(context, width, height, () {
                  if (_formKey.currentState?.validate() == true) {
                    _formKey.currentState?.save();
                    if (phoneNumber != null) {
                      if (passwordReset) {
                        context.read(optStateNotifier.notifier).loginProvider(
                            phoneNumber ?? '', 'user/forgot-password');
                      } else {
                        context
                            .read(optStateNotifier.notifier)
                            .resetPhoneProvider(phone: phoneNumber ?? '');
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Phone cant be Empty')));
                    }
                  }
                }, 'Next', Alignment.centerRight),
                // buildDividerText(width, 'or connect with', 10),
                // buildDividerText(width, "or", 20),
                // InkWell(
                //     onTap: () => CommonUtils.navigate(
                //           context,
                //           EmailLoginScreen(),
                //           finish: false,
                //         ),
                //     child: buildRichText(
                //         text1: "Login with  ", text2: "Mail Address")),
              ],
            ),
            './assets/background/girl1.png'),
      ),
    );
  }
}
