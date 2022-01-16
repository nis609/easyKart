// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otpmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OTPModel _$_$_OTPModelFromJson(Map<String, dynamic> json) {
  return _$_OTPModel(
    otp: json['otp'] as int?,
    message: json['message'] as String?,
    status: json['status'] as bool?,
    response_code: json['response_code'] as int?,
  );
}

Map<String, dynamic> _$_$_OTPModelToJson(_$_OTPModel instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'message': instance.message,
      'status': instance.status,
      'response_code': instance.response_code,
    };
