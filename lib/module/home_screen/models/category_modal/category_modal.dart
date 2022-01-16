import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_modal.freezed.dart';
part 'category_modal.g.dart';

@freezed
class CategoryModal with _$CategoryModal {
  factory CategoryModal({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'url') String? url,

  }) = _CategoryModal;

  factory CategoryModal.fromJson(Map<String, dynamic> json) => _$CategoryModalFromJson(json);
}