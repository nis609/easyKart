import 'package:ecoomerce_app/module/home_screen/models/banner_modal/banner_modal.dart';
import 'package:ecoomerce_app/module/home_screen/product/product_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_data.freezed.dart';
part 'product_data.g.dart';

@freezed
class ProductData with _$ProductData {
  factory ProductData({
    @JsonKey(name: 'data') ProductType? productType,

  }) = _ProductData;

  factory ProductData.fromJson(Map<String, dynamic> json) => _$ProductDataFromJson(json);
}