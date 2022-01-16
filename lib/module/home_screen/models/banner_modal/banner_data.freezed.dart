// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'banner_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BannerData _$BannerDataFromJson(Map<String, dynamic> json) {
  return _BannerData.fromJson(json);
}

/// @nodoc
class _$BannerDataTearOff {
  const _$BannerDataTearOff();

  _BannerData call({@JsonKey(name: 'data') List<BannerModal>? bannerData}) {
    return _BannerData(
      bannerData: bannerData,
    );
  }

  BannerData fromJson(Map<String, Object> json) {
    return BannerData.fromJson(json);
  }
}

/// @nodoc
const $BannerData = _$BannerDataTearOff();

/// @nodoc
mixin _$BannerData {
  @JsonKey(name: 'data')
  List<BannerModal>? get bannerData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerDataCopyWith<BannerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerDataCopyWith<$Res> {
  factory $BannerDataCopyWith(
          BannerData value, $Res Function(BannerData) then) =
      _$BannerDataCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'data') List<BannerModal>? bannerData});
}

/// @nodoc
class _$BannerDataCopyWithImpl<$Res> implements $BannerDataCopyWith<$Res> {
  _$BannerDataCopyWithImpl(this._value, this._then);

  final BannerData _value;
  // ignore: unused_field
  final $Res Function(BannerData) _then;

  @override
  $Res call({
    Object? bannerData = freezed,
  }) {
    return _then(_value.copyWith(
      bannerData: bannerData == freezed
          ? _value.bannerData
          : bannerData // ignore: cast_nullable_to_non_nullable
              as List<BannerModal>?,
    ));
  }
}

/// @nodoc
abstract class _$BannerDataCopyWith<$Res> implements $BannerDataCopyWith<$Res> {
  factory _$BannerDataCopyWith(
          _BannerData value, $Res Function(_BannerData) then) =
      __$BannerDataCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'data') List<BannerModal>? bannerData});
}

/// @nodoc
class __$BannerDataCopyWithImpl<$Res> extends _$BannerDataCopyWithImpl<$Res>
    implements _$BannerDataCopyWith<$Res> {
  __$BannerDataCopyWithImpl(
      _BannerData _value, $Res Function(_BannerData) _then)
      : super(_value, (v) => _then(v as _BannerData));

  @override
  _BannerData get _value => super._value as _BannerData;

  @override
  $Res call({
    Object? bannerData = freezed,
  }) {
    return _then(_BannerData(
      bannerData: bannerData == freezed
          ? _value.bannerData
          : bannerData // ignore: cast_nullable_to_non_nullable
              as List<BannerModal>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BannerData implements _BannerData {
  _$_BannerData({@JsonKey(name: 'data') this.bannerData});

  factory _$_BannerData.fromJson(Map<String, dynamic> json) =>
      _$_$_BannerDataFromJson(json);

  @override
  @JsonKey(name: 'data')
  final List<BannerModal>? bannerData;

  @override
  String toString() {
    return 'BannerData(bannerData: $bannerData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BannerData &&
            (identical(other.bannerData, bannerData) ||
                const DeepCollectionEquality()
                    .equals(other.bannerData, bannerData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bannerData);

  @JsonKey(ignore: true)
  @override
  _$BannerDataCopyWith<_BannerData> get copyWith =>
      __$BannerDataCopyWithImpl<_BannerData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BannerDataToJson(this);
  }
}

abstract class _BannerData implements BannerData {
  factory _BannerData({@JsonKey(name: 'data') List<BannerModal>? bannerData}) =
      _$_BannerData;

  factory _BannerData.fromJson(Map<String, dynamic> json) =
      _$_BannerData.fromJson;

  @override
  @JsonKey(name: 'data')
  List<BannerModal>? get bannerData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BannerDataCopyWith<_BannerData> get copyWith =>
      throw _privateConstructorUsedError;
}
