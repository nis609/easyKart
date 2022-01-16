// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductData _$_$_ProductDataFromJson(Map<String, dynamic> json) {
  return _$_ProductData(
    productType: json['data'] == null
        ? null
        : ProductType.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ProductDataToJson(_$_ProductData instance) =>
    <String, dynamic>{
      'data': instance.productType,
    };
