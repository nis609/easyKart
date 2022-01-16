import 'dart:io';


import 'package:device_info/device_info.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as secure;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../app_state/appstate.dart';
import '../../../component/error_dialog.dart';
import '../../../component/loading_widget.dart';
import '../../../component/misc.dart';
import '../../../component/transparent_container.dart';
import '../../../local_storage/hive_storage.dart';
import '../../../res/size_config.dart';
import '../controller/login_controller.dart';
import '../models/usermodel.dart';
import '../repository/repository.dart';
import '../widget/widget.dart';

final postOtpNotifier = StateNotifierProvider<LoginController, AppState>((ref) {
  return LoginController(ref.watch(loginRepository));
});

final restPassProvider =
    StateNotifierProvider<LoginController, AppState>((ref) {
  return LoginController(ref.watch(loginRepository));
});

//
final optStateNotifier =
    StateNotifierProvider<LoginController, AppState>((ref) {
  return LoginController(ref.watch(loginRepository));
});

//
class VerificationScreen extends StatelessWidget {
  VerificationScreen({
    Key? key,
    required this.phoneNumber,
    required this.otpget,
    required this.changeMobile,
  }) : super(key: key);
  final bool changeMobile;
  final String phoneNumber;
  int otpget;
  TextEditingController textEditingController = TextEditingController();
  String? otp;
  final _formKey = GlobalKey<FormState>();

  static const _secure = secure.FlutterSecureStorage();
  final HiveStorage storage = HiveStorage();

  final ValueNotifier<bool> _optChanger = ValueNotifier(false);
  // final _firebaseDatabase = FirebaseDatabase.instance;
  // final _firebaseMessaging = FirebaseMessaging.instance;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final height = SizeConfig.safeBlockVertical ?? 200;
    final width = SizeConfig.safeBlockHorizontal ?? 100;

    return Scaffold(
      body: ProviderListener(
        provider: optStateNotifier,
        onChange: (context, state) {
          if (state == AppState.loading()) {
            showDialog(
                context: context, builder: (context) => const LoadingWidgets());
          } else if (state is AppStateData) {
            Navigator.pop(context);
            state.data.fold((l) {
              otpget = l.otp ?? 312311;
              _optChanger.value = !_optChanger.value;
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
        child: ProviderListener(
          provider: restPassProvider,
          onChange: (context, state) {
            if (state == AppState.loading()) {
              showDialog(
                context: context,
                builder: (context) => const LoadingWidgets(),
              );
            } else if (state is AppStateData) {
              state.data.fold(
                (l) {
                  // l as SucessModel;

                },
                (r) {
                  Navigator.pop(context);
                          ErrorDialog(
              enumvalue: ErrorEnum.error,
              context: context,
              errorMessage: r.errors.toString()
            );
                },
              );
            } else if (state is AppStateError) {
              Navigator.pop(context);
                      ErrorDialog(
              enumvalue: ErrorEnum.error,
              context: context,
              errorMessage: state.e.toString()
            );
            }
          },
          child: ProviderListener(
            provider: postOtpNotifier,
            onChange: (context, state) {
              if (state == AppState.loading()) {
                showDialog(
                  context: context,
                  builder: (context) => const LoadingWidgets(),
                );
              } else if (state is AppStateData) {
                state.data.fold(
                  (l) async {
                    l as AccessTokenModel;
                    await _secure.write(key: 'Token', value: l.access_token);
                    Navigator.pop(context);
                    if (await _secure.read(key: 'Token') != null) {
                      if (l.user_data?.email == null &&
                          l.user_data?.name == null) {

                      } else {
                        storage.userName = l.user_data?.name ?? '';
                        storage.imageUrl = l.user_data?.image ?? '';

                      }
                    }
                  },
                  (r) {
                    Navigator.pop(context);
                            ErrorDialog(
              enumvalue: ErrorEnum.error,
              context: context,
              errorMessage: r.errors.toString()
            );
                  },
                );
              } else if (state is AppStateError) {
                Navigator.pop(context);
                        ErrorDialog(
              enumvalue: ErrorEnum.error,
              context: context,
              errorMessage: state.e.toString()
            );
              }
            },
            child: Form(
              key: _formKey,
              child: buildStackScreenWithBGImage(
                  height,
                  width,
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 40),
                        height: height * 15,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BoldText(
                              'Verification',
                              fontSize: width * 6,
                            ),
                            ValueListenableBuilder(
                                valueListenable: _optChanger,
                                builder: (context, value, child) {
                                  return BoldText(
                                    'Enter OTP code sent to your number$otpget ',
                                    fontSize: width * 3,
                                    weight: FontWeight.w200,
                                  );
                                }),
                            Container(
                              width: width * 40,
                              child: TrasparentContainer(
                                height: height * 0.5,
                                width: width * 40,
                                child: InkWell(
                                  onTap: () => context
                                      .read(optStateNotifier.notifier)
                                      .loginProvider(phoneNumber, 'user/login'),
                                  child: Center(
                                      child: BoldText(
                                    'Resend code',
                                    fontSize: width * 3.5,
                                    weight: FontWeight.w300,
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 300.w,
                        margin: const EdgeInsets.only(
                          bottom: 30,
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: PinCodeTextField(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          appContext: context,
                          pastedTextStyle: TextStyle(
                            color: Colors.green.shade600,
                            fontWeight: FontWeight.bold,
                          ),
                          length: 6,
                          animationType: AnimationType.fade,
                          validator: (v) {
                            if (v?.length != 6) {
                              return 'OTP is six digit';
                            } else if (v == null) {
                              return 'OTP is six digit';
                            } else {
                              return null;
                            }
                          },
                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.underline,
                            borderRadius: BorderRadius.circular(5),
                            fieldHeight: 50,
                            fieldWidth: 40,
                          ),
                          animationDuration: const Duration(milliseconds: 300),
                          keyboardType: TextInputType.number,
                          onSaved: (v) {
                            otp = v;
                          },
                          autoDismissKeyboard: false,
                          boxShadows: const [
                            BoxShadow(
                              offset: Offset(0, 1),
                              color: Colors.black12,
                              blurRadius: 10,
                            )
                          ],
                          onChanged: (v) {},
                          onCompleted: (v){
                            if (_formKey.currentState?.validate() == true) {
                              _formKey.currentState?.save();
                              if (changeMobile) {
                                context
                                    .read(restPassProvider.notifier)
                                    .chnagePasswordProvider(
                                    phone: phoneNumber,
                                    otp: int.parse(otp ?? '123'));
                              } else {
                                // context
                                //     .read(postOtpNotifier.notifier)
                                //     .accessTokenProvider(
                                //     phoneNumber, int.parse(otp ?? '123'));
                              }
                            }
                          },
                        ),
                      ),
                      Visibility(
                          visible: changeMobile,

                        child: buildTransparentButton(context, width, height, () {
                          if (_formKey.currentState?.validate() == true) {
                            _formKey.currentState?.save();
                            if (changeMobile) {
                              context
                                  .read(restPassProvider.notifier)
                                  .chnagePasswordProvider(
                                      phone: phoneNumber,
                                      otp: int.parse(otp ?? '123'));
                            } else {
                              // context
                              //     .read(postOtpNotifier.notifier)
                              //     .accessTokenProvider(
                              //         phoneNumber, int.parse(otp ?? '123'));
                            }
                          }
                        },

                            changeMobile ? 'Next' : 'Login',
                            Alignment.centerRight),
                      ),
                    ],
                  ),
                  './assets/background/girl2.png'),
            ),
          ),
        ),
      ),
    );
  }
  void saveFirebaseData() async {
    // await Firebase.initializeApp();
    // var deviceId = await _getId();
    // final firebaseToken = await _firebaseMessaging.getToken();
    //
    // _firebaseDatabase
    //     .reference()
    //     .child(AppStrings.DOMAIN)
    //     .child("Users/")
    //     .child(deviceId)
    //     .set(
    //   {
    //     "firebaseToken": firebaseToken,
    //     "deviceId": deviceId,
    //   },
    // ).asStream();
  }

  Future<String> _getId() async {
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      var iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.identifierForVendor; // unique ID on iOS
    } else {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      return androidDeviceInfo.androidId; // unique ID on Android
    }
  }
}
