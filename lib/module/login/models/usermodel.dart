
import 'package:freezed_annotation/freezed_annotation.dart';

part 'usermodel.freezed.dart';
part 'usermodel.g.dart';


@freezed
class AccessTokenModel with _$AccessTokenModel {
  factory AccessTokenModel({
   String ? access_token,
   String ? token_type,
   String ?message,
   String ?gender,
   bool? status,
   int? response_code ,
   UserModel? user_data,
   
  }) = _AccessTokenModel;
	
  factory AccessTokenModel.fromJson(Map<String, dynamic> json) =>
			_$AccessTokenModelFromJson(json);
}

@freezed
class UserModel with _$UserModel {
  factory UserModel({
   required  int id,
   String ? name,
   String ? email,
   String ? image,
   bool ? is_email_verified,
   String ? mobile,
   String ? type,
   String ? created_at
  }) = _UserModel;
	
  factory UserModel.fromJson(Map<String, dynamic> json) =>
			_$UserModelFromJson(json);
}
