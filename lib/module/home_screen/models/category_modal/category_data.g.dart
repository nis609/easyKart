// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryData _$_$_CategoryDataFromJson(Map<String, dynamic> json) {
  return _$_CategoryData(
    BannerData: (json['data'] as List<dynamic>?)
        ?.map((e) => BannerModal.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_CategoryDataToJson(_$_CategoryData instance) =>
    <String, dynamic>{
      'data': instance.BannerData,
    };
