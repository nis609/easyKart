// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'product_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductData _$ProductDataFromJson(Map<String, dynamic> json) {
  return _ProductData.fromJson(json);
}

/// @nodoc
class _$ProductDataTearOff {
  const _$ProductDataTearOff();

  _ProductData call({@JsonKey(name: 'data') ProductType? productType}) {
    return _ProductData(
      productType: productType,
    );
  }

  ProductData fromJson(Map<String, Object> json) {
    return ProductData.fromJson(json);
  }
}

/// @nodoc
const $ProductData = _$ProductDataTearOff();

/// @nodoc
mixin _$ProductData {
  @JsonKey(name: 'data')
  ProductType? get productType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDataCopyWith<ProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDataCopyWith<$Res> {
  factory $ProductDataCopyWith(
          ProductData value, $Res Function(ProductData) then) =
      _$ProductDataCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'data') ProductType? productType});

  $ProductTypeCopyWith<$Res>? get productType;
}

/// @nodoc
class _$ProductDataCopyWithImpl<$Res> implements $ProductDataCopyWith<$Res> {
  _$ProductDataCopyWithImpl(this._value, this._then);

  final ProductData _value;
  // ignore: unused_field
  final $Res Function(ProductData) _then;

  @override
  $Res call({
    Object? productType = freezed,
  }) {
    return _then(_value.copyWith(
      productType: productType == freezed
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as ProductType?,
    ));
  }

  @override
  $ProductTypeCopyWith<$Res>? get productType {
    if (_value.productType == null) {
      return null;
    }

    return $ProductTypeCopyWith<$Res>(_value.productType!, (value) {
      return _then(_value.copyWith(productType: value));
    });
  }
}

/// @nodoc
abstract class _$ProductDataCopyWith<$Res>
    implements $ProductDataCopyWith<$Res> {
  factory _$ProductDataCopyWith(
          _ProductData value, $Res Function(_ProductData) then) =
      __$ProductDataCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'data') ProductType? productType});

  @override
  $ProductTypeCopyWith<$Res>? get productType;
}

/// @nodoc
class __$ProductDataCopyWithImpl<$Res> extends _$ProductDataCopyWithImpl<$Res>
    implements _$ProductDataCopyWith<$Res> {
  __$ProductDataCopyWithImpl(
      _ProductData _value, $Res Function(_ProductData) _then)
      : super(_value, (v) => _then(v as _ProductData));

  @override
  _ProductData get _value => super._value as _ProductData;

  @override
  $Res call({
    Object? productType = freezed,
  }) {
    return _then(_ProductData(
      productType: productType == freezed
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as ProductType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductData implements _ProductData {
  _$_ProductData({@JsonKey(name: 'data') this.productType});

  factory _$_ProductData.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductDataFromJson(json);

  @override
  @JsonKey(name: 'data')
  final ProductType? productType;

  @override
  String toString() {
    return 'ProductData(productType: $productType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductData &&
            (identical(other.productType, productType) ||
                const DeepCollectionEquality()
                    .equals(other.productType, productType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productType);

  @JsonKey(ignore: true)
  @override
  _$ProductDataCopyWith<_ProductData> get copyWith =>
      __$ProductDataCopyWithImpl<_ProductData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductDataToJson(this);
  }
}

abstract class _ProductData implements ProductData {
  factory _ProductData({@JsonKey(name: 'data') ProductType? productType}) =
      _$_ProductData;

  factory _ProductData.fromJson(Map<String, dynamic> json) =
      _$_ProductData.fromJson;

  @override
  @JsonKey(name: 'data')
  ProductType? get productType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductDataCopyWith<_ProductData> get copyWith =>
      throw _privateConstructorUsedError;
}
