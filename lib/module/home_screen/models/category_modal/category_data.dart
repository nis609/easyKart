import 'package:ecoomerce_app/module/home_screen/models/banner_modal/banner_modal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_data.freezed.dart';
part 'category_data.g.dart';

@freezed
class CategoryData with _$CategoryData {
  factory CategoryData({
    @JsonKey(name: 'data') List<BannerModal>? BannerData,

  }) = _CategoryData;

  factory CategoryData.fromJson(Map<String, dynamic> json) => _$CategoryDataFromJson(json);
}