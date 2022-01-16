
import 'package:freezed_annotation/freezed_annotation.dart';

part 'otpmodel.freezed.dart';
part 'otpmodel.g.dart';

@freezed
class OTPModel with _$OTPModel {
  factory OTPModel({
    int ?otp,
    String ? message,
    bool ? status ,
    int ?response_code,

  }) = _OTPModel;
	
  factory OTPModel.fromJson(Map<String, dynamic> json) =>
			_$OTPModelFromJson(json);
}
