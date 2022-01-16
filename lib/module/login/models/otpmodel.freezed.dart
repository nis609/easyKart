// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'otpmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OTPModel _$OTPModelFromJson(Map<String, dynamic> json) {
  return _OTPModel.fromJson(json);
}

/// @nodoc
class _$OTPModelTearOff {
  const _$OTPModelTearOff();

  _OTPModel call(
      {int? otp, String? message, bool? status, int? response_code}) {
    return _OTPModel(
      otp: otp,
      message: message,
      status: status,
      response_code: response_code,
    );
  }

  OTPModel fromJson(Map<String, Object> json) {
    return OTPModel.fromJson(json);
  }
}

/// @nodoc
const $OTPModel = _$OTPModelTearOff();

/// @nodoc
mixin _$OTPModel {
  int? get otp => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  int? get response_code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OTPModelCopyWith<OTPModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OTPModelCopyWith<$Res> {
  factory $OTPModelCopyWith(OTPModel value, $Res Function(OTPModel) then) =
      _$OTPModelCopyWithImpl<$Res>;
  $Res call({int? otp, String? message, bool? status, int? response_code});
}

/// @nodoc
class _$OTPModelCopyWithImpl<$Res> implements $OTPModelCopyWith<$Res> {
  _$OTPModelCopyWithImpl(this._value, this._then);

  final OTPModel _value;
  // ignore: unused_field
  final $Res Function(OTPModel) _then;

  @override
  $Res call({
    Object? otp = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? response_code = freezed,
  }) {
    return _then(_value.copyWith(
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      response_code: response_code == freezed
          ? _value.response_code
          : response_code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$OTPModelCopyWith<$Res> implements $OTPModelCopyWith<$Res> {
  factory _$OTPModelCopyWith(_OTPModel value, $Res Function(_OTPModel) then) =
      __$OTPModelCopyWithImpl<$Res>;
  @override
  $Res call({int? otp, String? message, bool? status, int? response_code});
}

/// @nodoc
class __$OTPModelCopyWithImpl<$Res> extends _$OTPModelCopyWithImpl<$Res>
    implements _$OTPModelCopyWith<$Res> {
  __$OTPModelCopyWithImpl(_OTPModel _value, $Res Function(_OTPModel) _then)
      : super(_value, (v) => _then(v as _OTPModel));

  @override
  _OTPModel get _value => super._value as _OTPModel;

  @override
  $Res call({
    Object? otp = freezed,
    Object? message = freezed,
    Object? status = freezed,
    Object? response_code = freezed,
  }) {
    return _then(_OTPModel(
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      response_code: response_code == freezed
          ? _value.response_code
          : response_code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OTPModel implements _OTPModel {
  _$_OTPModel({this.otp, this.message, this.status, this.response_code});

  factory _$_OTPModel.fromJson(Map<String, dynamic> json) =>
      _$_$_OTPModelFromJson(json);

  @override
  final int? otp;
  @override
  final String? message;
  @override
  final bool? status;
  @override
  final int? response_code;

  @override
  String toString() {
    return 'OTPModel(otp: $otp, message: $message, status: $status, response_code: $response_code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OTPModel &&
            (identical(other.otp, otp) ||
                const DeepCollectionEquality().equals(other.otp, otp)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.response_code, response_code) ||
                const DeepCollectionEquality()
                    .equals(other.response_code, response_code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(otp) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(response_code);

  @JsonKey(ignore: true)
  @override
  _$OTPModelCopyWith<_OTPModel> get copyWith =>
      __$OTPModelCopyWithImpl<_OTPModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OTPModelToJson(this);
  }
}

abstract class _OTPModel implements OTPModel {
  factory _OTPModel(
      {int? otp,
      String? message,
      bool? status,
      int? response_code}) = _$_OTPModel;

  factory _OTPModel.fromJson(Map<String, dynamic> json) = _$_OTPModel.fromJson;

  @override
  int? get otp => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  bool? get status => throw _privateConstructorUsedError;
  @override
  int? get response_code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OTPModelCopyWith<_OTPModel> get copyWith =>
      throw _privateConstructorUsedError;
}
