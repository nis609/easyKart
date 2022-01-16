// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccessTokenModel _$_$_AccessTokenModelFromJson(Map<String, dynamic> json) {
  return _$_AccessTokenModel(
    access_token: json['access_token'] as String?,
    token_type: json['token_type'] as String?,
    message: json['message'] as String?,
    gender: json['gender'] as String?,
    status: json['status'] as bool?,
    response_code: json['response_code'] as int?,
    user_data: json['user_data'] == null
        ? null
        : UserModel.fromJson(json['user_data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AccessTokenModelToJson(
        _$_AccessTokenModel instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
      'token_type': instance.token_type,
      'message': instance.message,
      'gender': instance.gender,
      'status': instance.status,
      'response_code': instance.response_code,
      'user_data': instance.user_data,
    };

_$_UserModel _$_$_UserModelFromJson(Map<String, dynamic> json) {
  return _$_UserModel(
    id: json['id'] as int,
    name: json['name'] as String?,
    email: json['email'] as String?,
    image: json['image'] as String?,
    is_email_verified: json['is_email_verified'] as bool?,
    mobile: json['mobile'] as String?,
    type: json['type'] as String?,
    created_at: json['created_at'] as String?,
  );
}

Map<String, dynamic> _$_$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'image': instance.image,
      'is_email_verified': instance.is_email_verified,
      'mobile': instance.mobile,
      'type': instance.type,
      'created_at': instance.created_at,
    };
