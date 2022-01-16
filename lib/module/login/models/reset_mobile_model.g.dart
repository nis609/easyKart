// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_mobile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResetMobileModel _$_$_ResetMobileModelFromJson(Map<String, dynamic> json) {
  return _$_ResetMobileModel(
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
    message: json['message'] as String?,
    status: json['status'] as bool?,
    responseCode: json['response_code'] as int?,
  );
}

Map<String, dynamic> _$_$_ResetMobileModelToJson(
        _$_ResetMobileModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
      'response_code': instance.responseCode,
    };
