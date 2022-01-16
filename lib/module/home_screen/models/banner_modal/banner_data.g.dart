// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BannerData _$_$_BannerDataFromJson(Map<String, dynamic> json) {
  return _$_BannerData(
    bannerData: (json['data'] as List<dynamic>?)
        ?.map((e) => BannerModal.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_BannerDataToJson(_$_BannerData instance) =>
    <String, dynamic>{
      'data': instance.bannerData,
    };
