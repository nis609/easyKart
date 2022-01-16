import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_modal.freezed.dart';
part 'banner_modal.g.dart';

@freezed
class BannerModal with _$BannerModal {
  factory BannerModal({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'url') String? url,

  }) = _BannerModal;

  factory BannerModal.fromJson(Map<String, dynamic> json) => _$BannerModalFromJson(json);
}