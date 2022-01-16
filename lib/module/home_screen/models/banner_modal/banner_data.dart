import 'package:ecoomerce_app/module/home_screen/models/banner_modal/banner_modal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_data.freezed.dart';
part 'banner_data.g.dart';

@freezed
class BannerData with _$BannerData {
  factory BannerData({
    @JsonKey(name: 'data') List<BannerModal>? bannerData,

  }) = _BannerData;

  factory BannerData.fromJson(Map<String, dynamic> json) => _$BannerDataFromJson(json);
}