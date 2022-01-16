import 'package:ecoomerce_app/module/home_screen/models/banner_modal/banner_modal.dart';
import 'package:ecoomerce_app/module/home_screen/product/product_modal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_type.freezed.dart';
part 'product_type.g.dart';

@freezed
class ProductType with _$ProductType {
  factory ProductType({
    @JsonKey(name: 'bestseller') List<ProductModal>? bestSellerProductData,
    @JsonKey(name: 'trending') List<ProductModal>? trendingProductData,
    @JsonKey(name: 'hot') List<ProductModal>? hotProductData,
    @JsonKey(name: 'topDeal') List<ProductModal>? topDealProductData,
    @JsonKey(name: 'topRated') List<ProductModal>? topRatedProductDatatopRated,
    @JsonKey(name: 'easyMall') List<ProductModal>? easyMallProductDatatopRated,

  }) = _ProductType;

  factory ProductType.fromJson(Map<String, dynamic> json) => _$ProductTypeFromJson(json);
}