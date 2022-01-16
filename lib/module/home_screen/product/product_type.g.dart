// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductType _$_$_ProductTypeFromJson(Map<String, dynamic> json) {
  return _$_ProductType(
    bestSellerProductData: (json['bestseller'] as List<dynamic>?)
        ?.map((e) => ProductModal.fromJson(e as Map<String, dynamic>))
        .toList(),
    trendingProductData: (json['trending'] as List<dynamic>?)
        ?.map((e) => ProductModal.fromJson(e as Map<String, dynamic>))
        .toList(),
    hotProductData: (json['hot'] as List<dynamic>?)
        ?.map((e) => ProductModal.fromJson(e as Map<String, dynamic>))
        .toList(),
    topDealProductData: (json['topDeal'] as List<dynamic>?)
        ?.map((e) => ProductModal.fromJson(e as Map<String, dynamic>))
        .toList(),
    topRatedProductDatatopRated: (json['topRated'] as List<dynamic>?)
        ?.map((e) => ProductModal.fromJson(e as Map<String, dynamic>))
        .toList(),
    easyMallProductDatatopRated: (json['easyMall'] as List<dynamic>?)
        ?.map((e) => ProductModal.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ProductTypeToJson(_$_ProductType instance) =>
    <String, dynamic>{
      'bestseller': instance.bestSellerProductData,
      'trending': instance.trendingProductData,
      'hot': instance.hotProductData,
      'topDeal': instance.topDealProductData,
      'topRated': instance.topRatedProductDatatopRated,
      'easyMall': instance.easyMallProductDatatopRated,
    };
