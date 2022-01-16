import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as secure;

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
import '../controller/google_sign_in.dart';
import '../controller/login_controller.dart';
import '../models/usermodel.dart';
import '../repository/repository.dart';
import '../widget/widget.dart';

final optStateNotifier =
    StateNotifierProvider<LoginController, AppState>((ref) {
  return LoginController(ref.watch(loginRepository));
});
//
// final gmailProvider =
//     StateNotifierProvider<GoogleSignInController, AppState>((ref) {
//   return GoogleSignInController();
// });

final postSocialNotifier =
    StateNotifierProvider<LoginController, AppState>((ref) {
  return LoginController(ref.watch(loginRepository));
});

class LoginPhone extends StatefulWidget {
  LoginPhone({
    Key? key,
  }) : super(key: key);
  static const _secure = secure.FlutterSecureStorage();

  @override
  State<LoginPhone> createState() => _LoginPhoneState();
}

class _LoginPhoneState extends State<LoginPhone> with ValidationMixin {
  final GlobalKey<FormState> _formKey = GlobalKey();

  String? phoneNumber;
  String? password;
  String? name;
  String? email;
  int? phone;

  final HiveStorage storage = HiveStorage();

  Map<String, dynamic>? fbLoginResult;

  String? socialType;

  // final _firebaseDatabase = FirebaseDatabase.instance;

  // final _firebaseMessaging = FirebaseMessaging.instance;
  PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final height = SizeConfig.safeBlockVertical ?? 400;
    final width = SizeConfig.safeBlockHorizontal ?? 300;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black54,
            automaticallyImplyLeading: false,
            toolbarHeight: 20,

            bottom:  TabBar(
              tabs: [
                Tab(text:"SignUp",),
                Tab(text:"Login",),

              ],
              indicatorColor: Colors.yellow,
              unselectedLabelColor: Colors.white,
              labelColor: Colors.yellow,
            ),

          ),
          resizeToAvoidBottomInset: true,
          body: TabBarView(

            children: [
              Login(height, width),
              signUp(height, width),
            ],
          )),
    );
  }

  bool _isChecked = false;

  Widget Login(double height, double width) {
    return ProviderListener(
        provider: optStateNotifier,
        onChange: (context, state) {
          if (state == AppState.loading()) {
            showDialog(
                context: context, builder: (context) => const LoadingWidgets());
          } else if (state is AppStateData) {
            storage.socialLogin = 'phone';
            print(AppStateData);
            Navigator.pop(context);

            ErrorDialog(
                enumvalue: ErrorEnum.success,
                context: context,
                errorMessage: state.data.toString());
            // if (passwordReset) {
            //   context.router.push(ResetPasswordRoute(
            //       phone: phoneNumber ?? '', otp: l.otp ?? 312311));
            // } else {
            // context.router.push(
            //   VerificationScreenRoute(
            //     phoneNumber: phoneNumber ?? '',
            //     otpget: l.otp ?? 312311,
            //     changeMobile: false,
            //   ),
            // );

            // }

          } else if (state is AppStateError) {
            print("stae" + state.e.toString());
            ErrorDialog(
                enumvalue: ErrorEnum.error,
                context: context,
                errorMessage: state.e.toString());
          }
        },
        child: buildStackScreenWithBGImage(
            height,
            width,
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Container(
                //   margin: const EdgeInsets.symmetric(vertical: 15),
                //   width: width * 70,
                //   height: height * 10,
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       // BoldText(
                //       //   'Login with mobile number',
                //       //   fontSize: width * 5,
                //       // ),
                //       // BoldText(
                //       //   'Register or login with your mobile number',
                //       //   fontSize: width * 3.5,
                //       //   weight: FontWeight.w200,
                //       // ),
                //     ],
                //   ),
                // ),

                SizedBox(
                  width: SizeConfig.screenWidth,
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                "E-Mail Address",
                                style: TextStyle(
                                    fontFamily: 'Sansation',
                                    fontSize: width * 5,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black38),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: AppTextInput(
                              'E-mail Addresss',
                              validator: validatePhone,
                              icon: Icons.phone,
                              onSaved: (value) {
                                phoneNumber = value;
                              },
                              textInputType: TextInputType.text,
                              style: TextStyle(
                                  fontFamily: 'Sansation',
                                  fontSize: width * 5,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black38),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                "Password",
                                style: TextStyle(
                                    fontFamily: 'Sansation',
                                    fontSize: width * 5,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black38),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: AppTextInput(
                              'Password',
                              validator: validatePhone,
                              icon: Icons.phone,
                              onSaved: (value) {
                                password = value;
                              },
                              textInputType: TextInputType.visiblePassword,
                              style: TextStyle(
                                  fontFamily: 'Sansation',
                                  fontSize: width * 5,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black38),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 5),
                    child: BoldText(
                      "Forgot Your Passowrd",
                      color: Colors.black38,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),                    child: Container(
                      height: 50,
                      width: 150,
                      child: CheckboxListTile(
                        title: Text("Remember Me"),
                        controlAffinity: ListTileControlAffinity.leading,
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        value: _isChecked,
                        onChanged: (val) {
                          setState(() {
                            _isChecked = val!;
                            if (val == true) {
                              var _currText = "t";
                            }
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Center(
                    child: buildTransparentButton(context, SizeConfig.screenWidth , height / 5, () {
                      if (_formKey.currentState?.validate() == true) {
                        _formKey.currentState?.save();
                        if (phoneNumber != null) {
                          // if (passwordReset) {
                          //   context.read(optStateNotifier.notifier).otpProvider(
                          //       phoneNumber ?? '', 'user/forgot-password');
                          // } else {
                          context
                              .read(optStateNotifier.notifier)
                              .loginProvider(phoneNumber ?? '', password ?? "");
                          // }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Phone cant be Empty')));
                        }
                      }
                    }, 'Login', Alignment.centerLeft),
                  ),
                ),

                SizedBox(
                  height: height * 2,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    child: buildRichText(
                        text1: 'Forget Your Password? ',
                        text2: 'Create a new one',
                        style1: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black38),
                        style2: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black38,
                            decoration: TextDecoration.underline)),
                  ),
                ),
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
            './assets/background/girl1.png'));
  }

  Widget signUp(double height, double width) {
    return ProviderListener(
        provider: optStateNotifier,
        onChange: (context, state) {
          if (state == AppState.loading()) {
            showDialog(
                context: context, builder: (context) => const LoadingWidgets());
          } else if (state is AppStateData) {
            storage.socialLogin = 'phone';
            print(AppStateData);
            Navigator.pop(context);

            ErrorDialog(
                enumvalue: ErrorEnum.success,
                context: context,
                errorMessage: state.data.toString());
            // if (passwordReset) {
            //   context.router.push(ResetPasswordRoute(
            //       phone: phoneNumber ?? '', otp: l.otp ?? 312311));
            // } else {
            // context.router.push(
            //   VerificationScreenRoute(
            //     phoneNumber: phoneNumber ?? '',
            //     otpget: l.otp ?? 312311,
            //     changeMobile: false,
            //   ),
            // );

            // }

          } else if (state is AppStateError) {
            print("stae" + state.e.toString());
            ErrorDialog(
                enumvalue: ErrorEnum.error,
                context: context,
                errorMessage: state.e.toString());
          }
        },
        child:buildStackScreenWithBGImage(
            height,
            width,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(
                    width: SizeConfig.screenWidth,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                "Name",
                                style: TextStyle(
                                    fontFamily: 'Sansation',
                                    fontSize: width * 5,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black38),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: AppTextInput(
                              'Name',
                              validator: validateRequired,
                              icon: Icons.phone,
                              onSaved: (value) {
                                name = value;
                              },
                              textInputType: TextInputType.text,
                              style: TextStyle(
                                  fontFamily: 'Sansation',
                                  fontSize: width * 5,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black38),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                "Email",
                                style: TextStyle(
                                    fontFamily: 'Sansation',
                                    fontSize: width * 5,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black38),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: AppTextInput(
                              'E-mail Addresss',
                              validator: emailValidateForLogin,
                              icon: Icons.phone,
                              onSaved: (value) {
                                email = value;
                              },
                              textInputType: TextInputType.text,
                              style: TextStyle(
                                  fontFamily: 'Sansation',
                                  fontSize: width * 5,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black38),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                "Password",

                                style: TextStyle(
                                    fontFamily: 'Sansation',
                                    fontSize: width * 5,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black38),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: AppTextInput(
                              'password',
                              validator: eightORMore,
                              icon: Icons.phone,
                              onSaved: (value) {
                                password = value;
                              },
                              textInputType: TextInputType.text,
                              style: TextStyle(
                                  fontFamily: 'Sansation',
                                  fontSize: width * 5,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black38),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                "Phone",
                                style: TextStyle(
                                    fontFamily: 'Sansation',
                                    fontSize: width * 5,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black38),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: AppTextInput(
                              'Password',
                              validator: validatePhone,
                              icon: Icons.phone,
                              onSaved: (value) {
                                phoneNumber = value;
                              },
                              textInputType: TextInputType.text,
                              style: TextStyle(
                                  fontFamily: 'Sansation',
                                  fontSize: width * 5,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black38),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: buildTransparentButton(
                        context, SizeConfig.screenWidth, height / 5, () {
                      if (_formKey.currentState?.validate() == true) {
                        _formKey.currentState?.save();
                        if (phoneNumber != null) {
                          // if (passwordReset) {
                          //   context.read(optStateNotifier.notifier).otpProvider(
                          //       phoneNumber ?? '', 'user/forgot-password');
                          // } else {
                          context
                              .read(optStateNotifier.notifier)
                              .SignUpProvider(email ?? '',password??"",phoneNumber??"0" ,name??"");
                          // }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Phone cant be Empty')));
                        }
                      }
                    }, 'Register', Alignment.centerLeft),
                  ),

                  SizedBox(
                    height: height * 2,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 25),
                      child: buildRichText(
                          text1: 'Dont’t have an account? ',
                          text2: 'Create a new one',
                          style1: const TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                          style2: const TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline)),
                    ),
                  ),
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
            ),
            './assets/background/girl1.png'),
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
