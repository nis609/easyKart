import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ecoomerce_app/local_storage/hive_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../app_state/appstate.dart';
import '../repository/repository.dart';

class LoginController extends StateNotifier<AppState> {
  LoginController(this._loginRepository) : super(AppState.initial());
  final _secure = const FlutterSecureStorage();
  final LoginRepository _loginRepository;
  final HiveStorage storage = HiveStorage();
  Future loginProvider(String email,String password) async {
    try {
      state = AppState.loading();
      final _response = await _loginRepository.getAcessToken(email: email,password:password);
      state = AppState.data(_response);
    } catch (e) {
      state = AppState.error(e);
    }
  }
  Future SignUpProvider(String email,String password,String phone,String name) async {
    try {
      state = AppState.loading();
      final _response = await _loginRepository.signUpUser(email: email,password:password,name: name,phone: phone);
      state = AppState.data(_response);
    } catch (e) {
      state = AppState.error(e);
    }
  }

  // Future accessTokenProvider(String phone, int otp) async {
  //   try {
  //     state = AppState.loading();
  //     final _response =
  //         await _loginRepository.getAcessToken(phoneNumber: phone, otp: otp);
  //
  //     state = AppState.data(_response);
  //   } catch (e) {
  //     state = AppState.error(e);
  //   }
  // }

  Future accessTokenSocialProvider(
      {required String email,
      String? name,
      String? service_provider,
      String? image,
      String? id}) async {
    try {
      state = AppState.loading();
      final _response = await _loginRepository.postSocialProfile(
        email: email,
        name: name,
        service_provider: service_provider,
        image: image,
        id: id,
      );

      state = AppState.data(_response);
    } catch (e) {
      state = AppState.error(e);
    }
  }

  Future profileUpdateProvider(
      {required FormData formData,}) async {
    try {
      state = AppState.loading();
      final _response = await _loginRepository.profileUpdate(
       formData:formData,
      );
      print("sdkmskmdskd");


      state = AppState.data(_response);
    } catch (e) {
      state = AppState.error(e);
    }
  }
Future resetPhoneProvider(
      {required String phone,}) async {
    try {
      state = AppState.loading();
      final _response = await _loginRepository.getOptForReset(
       phoneNumber: phone,
      );

      state = AppState.data(_response);
    } catch (e) {
      state = AppState.error(e);
    }
  }

  Future chnagePasswordProvider(
      {required String phone,required int otp}) async {
    try {
      state = AppState.loading();
      final _response = await _loginRepository.changePassword(
       phoneNumber: phone,
       otp: otp,
      );

      state = AppState.data(_response);
    } catch (e) {
      state = AppState.error(e);
    }
  }
  
}
