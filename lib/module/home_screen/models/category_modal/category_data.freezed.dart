// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'category_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryData _$CategoryDataFromJson(Map<String, dynamic> json) {
  return _CategoryData.fromJson(json);
}

/// @nodoc
class _$CategoryDataTearOff {
  const _$CategoryDataTearOff();

  _CategoryData call({@JsonKey(name: 'data') List<BannerModal>? BannerData}) {
    return _CategoryData(
      BannerData: BannerData,
    );
  }

  CategoryData fromJson(Map<String, Object> json) {
    return CategoryData.fromJson(json);
  }
}

/// @nodoc
const $CategoryData = _$CategoryDataTearOff();

/// @nodoc
mixin _$CategoryData {
  @JsonKey(name: 'data')
  List<BannerModal>? get BannerData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDataCopyWith<CategoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDataCopyWith<$Res> {
  factory $CategoryDataCopyWith(
          CategoryData value, $Res Function(CategoryData) then) =
      _$CategoryDataCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'data') List<BannerModal>? BannerData});
}

/// @nodoc
class _$CategoryDataCopyWithImpl<$Res> implements $CategoryDataCopyWith<$Res> {
  _$CategoryDataCopyWithImpl(this._value, this._then);

  final CategoryData _value;
  // ignore: unused_field
  final $Res Function(CategoryData) _then;

  @override
  $Res call({
    Object? BannerData = freezed,
  }) {
    return _then(_value.copyWith(
      BannerData: BannerData == freezed
          ? _value.BannerData
          : BannerData // ignore: cast_nullable_to_non_nullable
              as List<BannerModal>?,
    ));
  }
}

/// @nodoc
abstract class _$CategoryDataCopyWith<$Res>
    implements $CategoryDataCopyWith<$Res> {
  factory _$CategoryDataCopyWith(
          _CategoryData value, $Res Function(_CategoryData) then) =
      __$CategoryDataCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'data') List<BannerModal>? BannerData});
}

/// @nodoc
class __$CategoryDataCopyWithImpl<$Res> extends _$CategoryDataCopyWithImpl<$Res>
    implements _$CategoryDataCopyWith<$Res> {
  __$CategoryDataCopyWithImpl(
      _CategoryData _value, $Res Function(_CategoryData) _then)
      : super(_value, (v) => _then(v as _CategoryData));

  @override
  _CategoryData get _value => super._value as _CategoryData;

  @override
  $Res call({
    Object? BannerData = freezed,
  }) {
    return _then(_CategoryData(
      BannerData: BannerData == freezed
          ? _value.BannerData
          : BannerData // ignore: cast_nullable_to_non_nullable
              as List<BannerModal>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryData implements _CategoryData {
  _$_CategoryData({@JsonKey(name: 'data') this.BannerData});

  factory _$_CategoryData.fromJson(Map<String, dynamic> json) =>
      _$_$_CategoryDataFromJson(json);

  @override
  @JsonKey(name: 'data')
  final List<BannerModal>? BannerData;

  @override
  String toString() {
    return 'CategoryData(BannerData: $BannerData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryData &&
            (identical(other.BannerData, BannerData) ||
                const DeepCollectionEquality()
                    .equals(other.BannerData, BannerData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(BannerData);

  @JsonKey(ignore: true)
  @override
  _$CategoryDataCopyWith<_CategoryData> get copyWith =>
      __$CategoryDataCopyWithImpl<_CategoryData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CategoryDataToJson(this);
  }
}

abstract class _CategoryData implements CategoryData {
  factory _CategoryData(
      {@JsonKey(name: 'data') List<BannerModal>? BannerData}) = _$_CategoryData;

  factory _CategoryData.fromJson(Map<String, dynamic> json) =
      _$_CategoryData.fromJson;

  @override
  @JsonKey(name: 'data')
  List<BannerModal>? get BannerData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategoryDataCopyWith<_CategoryData> get copyWith =>
      throw _privateConstructorUsedError;
}
