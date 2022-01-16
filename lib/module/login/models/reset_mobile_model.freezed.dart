// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'reset_mobile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResetMobileModel _$ResetMobileModelFromJson(Map<String, dynamic> json) {
  return _ResetMobileModel.fromJson(json);
}

/// @nodoc
class _$ResetMobileModelTearOff {
  const _$ResetMobileModelTearOff();

  _ResetMobileModel call(
      {@JsonKey(name: 'data') Data? data,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'response_code') int? responseCode}) {
    return _ResetMobileModel(
      data: data,
      message: message,
      status: status,
      responseCode: responseCode,
    );
  }

  ResetMobileModel fromJson(Map<String, Object> json) {
    return ResetMobileModel.fromJson(json);
  }
}

/// @nodoc
const $ResetMobileModel = _$ResetMobileModelTearOff();

/// @nodoc
mixin _$ResetMobileModel {
  @JsonKey(name: 'data')
  Data? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'response_code')
  int? get responseCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResetMobileModelCopyWith<ResetMobileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetMobileModelCopyWith<$Res> {
  factory $ResetMobileModelCopyWith(
          ResetMobileModel value, $Res Function(ResetMobileModel) then) =
      _$ResetMobileModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'data') Data? data,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'response_code') int? responseCode});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ResetMobileModelCopyWithImpl<$Res>
    implements $ResetMobileModelCopyWith<$Res> {
  _$ResetMobileModelCopyWithImpl(this._value, this._then);

  final ResetMobileModel _value;
  // ignore: unused_field
  final $Res Function(ResetMobileModel) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? responseCode = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      responseCode: responseCode == freezed
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$ResetMobileModelCopyWith<$Res>
    implements $ResetMobileModelCopyWith<$Res> {
  factory _$ResetMobileModelCopyWith(
          _ResetMobileModel value, $Res Function(_ResetMobileModel) then) =
      __$ResetMobileModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'data') Data? data,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'response_code') int? responseCode});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$ResetMobileModelCopyWithImpl<$Res>
    extends _$ResetMobileModelCopyWithImpl<$Res>
    implements _$ResetMobileModelCopyWith<$Res> {
  __$ResetMobileModelCopyWithImpl(
      _ResetMobileModel _value, $Res Function(_ResetMobileModel) _then)
      : super(_value, (v) => _then(v as _ResetMobileModel));

  @override
  _ResetMobileModel get _value => super._value as _ResetMobileModel;

  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? responseCode = freezed,
  }) {
    return _then(_ResetMobileModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      responseCode: responseCode == freezed
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResetMobileModel implements _ResetMobileModel {
  _$_ResetMobileModel(
      {@JsonKey(name: 'data') this.data,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'response_code') this.responseCode});

  factory _$_ResetMobileModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ResetMobileModelFromJson(json);

  @override
  @JsonKey(name: 'data')
  final Data? data;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'response_code')
  final int? responseCode;

  @override
  String toString() {
    return 'ResetMobileModel(data: $data, message: $message, status: $status, responseCode: $responseCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResetMobileModel &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.responseCode, responseCode) ||
                const DeepCollectionEquality()
                    .equals(other.responseCode, responseCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(responseCode);

  @JsonKey(ignore: true)
  @override
  _$ResetMobileModelCopyWith<_ResetMobileModel> get copyWith =>
      __$ResetMobileModelCopyWithImpl<_ResetMobileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ResetMobileModelToJson(this);
  }
}

abstract class _ResetMobileModel implements ResetMobileModel {
  factory _ResetMobileModel(
      {@JsonKey(name: 'data') Data? data,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'response_code') int? responseCode}) = _$_ResetMobileModel;

  factory _ResetMobileModel.fromJson(Map<String, dynamic> json) =
      _$_ResetMobileModel.fromJson;

  @override
  @JsonKey(name: 'data')
  Data? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'response_code')
  int? get responseCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResetMobileModelCopyWith<_ResetMobileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
