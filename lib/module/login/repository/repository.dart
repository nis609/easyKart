import 'package:dio/dio.dart';
import 'package:ecoomerce_app/local_storage/hive_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as secure;
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../app_state/errormodel.dart';
import '../../../app_state/sucess_model.dart';
import '../../../config/error.dart';
import '../../../res/strings.dart';
import '../models/otpmodel.dart';
import '../models/reset_mobile_model.dart';
import '../models/usermodel.dart';

final loginRepository = Provider<LoginRepository>((ref) {
  return LoginRepository();
});

class LoginRepository {
  final _dio = Dio();
  // final box=Box.get()
  final HiveStorage storage = HiveStorage();
  final _secureStorage = secure.FlutterSecureStorage();
  Future<OTPModel> getOtp(
      {required String phoneNumber, required String url}) async {
    print(phoneNumber);
    final _formData = FormData.fromMap({
      'mobile': phoneNumber,
    });
    final Response _response;
    try {
      _response = await _dio.post(
        '${AppStrings.appUrl}user/login',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Accept-Charset': 'application/json'
          },
        ),
        data: _formData,
      );
      storage.userName = _response.data['name'] ?? "ss";
      storage.imageUrl = _response.data['imageUrl'] ?? "ss";

      print("aasdad");
      print(storage.userName);
      return OTPModel.fromJson(_response.data);
    } on DioError catch (dioError) {
      if (dioError.response?.statusCode == 422) {
       
      }
      throw DioExceptionError.fromDioError(dioError);
    } catch (e) {
      throw DioExceptionError.fromDioError(e);
    }
  }

  Future<ResetMobileModel> getOptForReset({
    required String phoneNumber,
  }) async {
    _dio.options.headers['Authorization'] =
        'Bearer ${await _secureStorage.read(key: 'Token')}';
    final _formData = FormData.fromMap({
      'new_mobile': phoneNumber,
    });
    final Response _response;
    try {
      _response = await _dio.post(
        '${AppStrings.appUrl}user/change-number',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Accept-Charset': 'application/json'
          },
        ),
        data: _formData,
      );
      return ResetMobileModel.fromJson(_response.data);
    } on DioError catch (dioError) {
      if (dioError.response?.statusCode == 422) {
       
      }
      throw DioExceptionError.fromDioError(dioError);
    } catch (e) {
      throw DioExceptionError.fromDioError(e);
    }
  }

  Future<AccessTokenModel> getAcessToken(
      {required String email, required String password}) async {
    final _formData = FormData.fromMap({
      'email': email,
      'password': password,
    });
    print(email);
    print(password);
    late final Response _response;
    try {
      _response = await _dio.post(
        '${AppStrings.appUrl}user/login',
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
            'Accept': 'application/json',
            'Accept-Charset': 'application/json'
          },
        ),
        data: _formData,
      );
      print(_response.data);
      print(_response.toString()+"rees[pms");

      return AccessTokenModel.fromJson(_response.data);
    } on DioError catch (dioError) {
      if (dioError.response?.statusCode == 422) {
       
      } else if (dioError.response?.statusCode == 401) {
       
      }
      throw DioExceptionError.fromDioError(dioError);
    } catch (e) {
      throw DioExceptionError.fromDioError(e);
    }
  }
  Future<AccessTokenModel> signUpUser(
      {required String email, required String password,required String name, required String phone,}) async {
    final _formData = FormData.fromMap({
      'email': email,
      'name': name,
      'password': password,
      'mobile': phone,
    });
    print(email);
    print(password);
    late final Response _response;
    try {
      _response = await _dio.post(
        '${AppStrings.appUrl}user/login',
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
            'Accept': 'application/json',
            'Accept-Charset': 'application/json'
          },
        ),
        data: _formData,
      );
      print(_response.data);
      print(_response.toString()+"rees[pms");

      return AccessTokenModel.fromJson(_response.data);
    } on DioError catch (dioError) {
      if (dioError.response?.statusCode == 422) {

      } else if (dioError.response?.statusCode == 401) {

      }
      throw DioExceptionError.fromDioError(dioError);
    } catch (e) {
      throw DioExceptionError.fromDioError(e);
    }
  }

  Future<AccessTokenModel> postSocialProfile(
      {String? email,
      String? name,
      String? service_provider,
      String? image,
      String? id}) async {
    final _formData = FormData.fromMap({
      'name': name,
      'email': email,
      'social_id': id,
      'service_provider': service_provider,
      'image': image,
    });
    final Response _response;
    try {
      _response = await _dio.post(
        '${AppStrings.appUrl}user/social-login',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Accept-Charset': 'application/json'
          },
        ),
        data: _formData,
      );
      // print('sdad');
      // print(_response.data);
      return AccessTokenModel.fromJson(_response.data);
    } on DioError catch (e) {
      print(e.response?.data);
      if (e.response?.statusCode == 422) {
       ErrorModel.fromJson(e.response?.data);
      }
      print(e);
      throw DioExceptionError.fromDioError(e);
    } catch (e) {
      // print(e);
      print(e);
      throw DioExceptionError.fromDioError(e);
    }
  }

  Future<AccessTokenModel> profileUpdate({required FormData formData}) async {
    final Response _response;
    try {
      _dio.options.headers['Authorization'] =
          'Bearer ${await _secureStorage.read(key: 'Token')}';
      _response = await _dio.post(
        '${AppStrings.appUrl}user/update-profile',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Accept-Charset': 'application/json'
          },
        ),
        data: formData,
      );
      print(storage.imageUrl);
      print(storage.userName);
      storage.imageUrl = _response.data['user_data']['image'];
      storage.userName = _response.data['user_data']['name'];
      print(_response.data['user_data']['name']);
      print("adksdkmadmksmd");
      print(storage.imageUrl);
      print(storage.userName);
      print("adksdkmadmksmd");
      return AccessTokenModel.fromJson(_response.data);
    } on DioError catch (e) {
      throw DioExceptionError.fromDioError(e);
    } catch (e) {
      throw DioExceptionError.fromDioError(e);
    }
  }

  Future<SucessModel> changePassword(
      {required String phoneNumber, required int otp}) async {
    final _formData = FormData.fromMap({
      'phone': phoneNumber,
      'otp': otp,
    });
    late final Response _response;
    try {
      _response = await _dio.post(
        '${AppStrings.appUrl}user/validate-number-change',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Accept-Charset': 'application/json'
          },
        ),
        data: _formData,
      );

      return SucessModel.fromJson(_response.data);
    } on DioError catch (dioError) {
      print('$dioError');
      if (dioError.response?.statusCode == 422) {
       
      }
      throw DioExceptionError.fromDioError(dioError);
    } catch (e) {
      print('$e');

      throw DioExceptionError.fromDioError(e);
    }
  }
}
