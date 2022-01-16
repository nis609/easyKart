import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'reset_mobile_model.freezed.dart';
part 'reset_mobile_model.g.dart';

@freezed
class ResetMobileModel with _$ResetMobileModel {
	factory ResetMobileModel({
		@JsonKey(name: 'data') Data? data,
		@JsonKey(name: 'message') String? message,
		@JsonKey(name: 'status') bool? status,
		@JsonKey(name: 'response_code') int? responseCode,
	}) = _ResetMobileModel;

	factory ResetMobileModel.fromJson(Map<String, dynamic> json) => _$ResetMobileModelFromJson(json);
}