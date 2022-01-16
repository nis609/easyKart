import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
	factory Data({
		@JsonKey(name: 'phone') String? phone,
		@JsonKey(name: 'otp') int? otp,
	}) = _Data;

	factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}