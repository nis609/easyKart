// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModal _$_$_ProductModalFromJson(Map<String, dynamic> json) {
  return _$_ProductModal(
    bestseller: json['bestseller'] as int?,
    vendorId: json['vendorId'] as int?,
    id: json['id'] as int?,
    name: json['name'] as String?,
    brand: json['brand'] as String?,
    images:
        (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    category:
        (json['category'] as List<dynamic>?)?.map((e) => e as String).toList(),
    summary: json['summary'] as String?,
    price: json['price'] as String?,
    featured: json['featured'] as bool?,
  );
}

Map<String, dynamic> _$_$_ProductModalToJson(_$_ProductModal instance) =>
    <String, dynamic>{
      'bestseller': instance.bestseller,
      'vendorId': instance.vendorId,
      'id': instance.id,
      'name': instance.name,
      'brand': instance.brand,
      'images': instance.images,
      'category': instance.category,
      'summary': instance.summary,
      'price': instance.price,
      'featured': instance.featured,
    };
