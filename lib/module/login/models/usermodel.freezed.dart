// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'usermodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccessTokenModel _$AccessTokenModelFromJson(Map<String, dynamic> json) {
  return _AccessTokenModel.fromJson(json);
}

/// @nodoc
class _$AccessTokenModelTearOff {
  const _$AccessTokenModelTearOff();

  _AccessTokenModel call(
      {String? access_token,
      String? token_type,
      String? message,
      String? gender,
      bool? status,
      int? response_code,
      UserModel? user_data}) {
    return _AccessTokenModel(
      access_token: access_token,
      token_type: token_type,
      message: message,
      gender: gender,
      status: status,
      response_code: response_code,
      user_data: user_data,
    );
  }

  AccessTokenModel fromJson(Map<String, Object> json) {
    return AccessTokenModel.fromJson(json);
  }
}

/// @nodoc
const $AccessTokenModel = _$AccessTokenModelTearOff();

/// @nodoc
mixin _$AccessTokenModel {
  String? get access_token => throw _privateConstructorUsedError;
  String? get token_type => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  int? get response_code => throw _privateConstructorUsedError;
  UserModel? get user_data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessTokenModelCopyWith<AccessTokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessTokenModelCopyWith<$Res> {
  factory $AccessTokenModelCopyWith(
          AccessTokenModel value, $Res Function(AccessTokenModel) then) =
      _$AccessTokenModelCopyWithImpl<$Res>;
  $Res call(
      {String? access_token,
      String? token_type,
      String? message,
      String? gender,
      bool? status,
      int? response_code,
      UserModel? user_data});

  $UserModelCopyWith<$Res>? get user_data;
}

/// @nodoc
class _$AccessTokenModelCopyWithImpl<$Res>
    implements $AccessTokenModelCopyWith<$Res> {
  _$AccessTokenModelCopyWithImpl(this._value, this._then);

  final AccessTokenModel _value;
  // ignore: unused_field
  final $Res Function(AccessTokenModel) _then;

  @override
  $Res call({
    Object? access_token = freezed,
    Object? token_type = freezed,
    Object? message = freezed,
    Object? gender = freezed,
    Object? status = freezed,
    Object? response_code = freezed,
    Object? user_data = freezed,
  }) {
    return _then(_value.copyWith(
      access_token: access_token == freezed
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String?,
      token_type: token_type == freezed
          ? _value.token_type
          : token_type // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      response_code: response_code == freezed
          ? _value.response_code
          : response_code // ignore: cast_nullable_to_non_nullable
              as int?,
      user_data: user_data == freezed
          ? _value.user_data
          : user_data // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  @override
  $UserModelCopyWith<$Res>? get user_data {
    if (_value.user_data == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user_data!, (value) {
      return _then(_value.copyWith(user_data: value));
    });
  }
}

/// @nodoc
abstract class _$AccessTokenModelCopyWith<$Res>
    implements $AccessTokenModelCopyWith<$Res> {
  factory _$AccessTokenModelCopyWith(
          _AccessTokenModel value, $Res Function(_AccessTokenModel) then) =
      __$AccessTokenModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? access_token,
      String? token_type,
      String? message,
      String? gender,
      bool? status,
      int? response_code,
      UserModel? user_data});

  @override
  $UserModelCopyWith<$Res>? get user_data;
}

/// @nodoc
class __$AccessTokenModelCopyWithImpl<$Res>
    extends _$AccessTokenModelCopyWithImpl<$Res>
    implements _$AccessTokenModelCopyWith<$Res> {
  __$AccessTokenModelCopyWithImpl(
      _AccessTokenModel _value, $Res Function(_AccessTokenModel) _then)
      : super(_value, (v) => _then(v as _AccessTokenModel));

  @override
  _AccessTokenModel get _value => super._value as _AccessTokenModel;

  @override
  $Res call({
    Object? access_token = freezed,
    Object? token_type = freezed,
    Object? message = freezed,
    Object? gender = freezed,
    Object? status = freezed,
    Object? response_code = freezed,
    Object? user_data = freezed,
  }) {
    return _then(_AccessTokenModel(
      access_token: access_token == freezed
          ? _value.access_token
          : access_token // ignore: cast_nullable_to_non_nullable
              as String?,
      token_type: token_type == freezed
          ? _value.token_type
          : token_type // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      response_code: response_code == freezed
          ? _value.response_code
          : response_code // ignore: cast_nullable_to_non_nullable
              as int?,
      user_data: user_data == freezed
          ? _value.user_data
          : user_data // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccessTokenModel implements _AccessTokenModel {
  _$_AccessTokenModel(
      {this.access_token,
      this.token_type,
      this.message,
      this.gender,
      this.status,
      this.response_code,
      this.user_data});

  factory _$_AccessTokenModel.fromJson(Map<String, dynamic> json) =>
      _$_$_AccessTokenModelFromJson(json);

  @override
  final String? access_token;
  @override
  final String? token_type;
  @override
  final String? message;
  @override
  final String? gender;
  @override
  final bool? status;
  @override
  final int? response_code;
  @override
  final UserModel? user_data;

  @override
  String toString() {
    return 'AccessTokenModel(access_token: $access_token, token_type: $token_type, message: $message, gender: $gender, status: $status, response_code: $response_code, user_data: $user_data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccessTokenModel &&
            (identical(other.access_token, access_token) ||
                const DeepCollectionEquality()
                    .equals(other.access_token, access_token)) &&
            (identical(other.token_type, token_type) ||
                const DeepCollectionEquality()
                    .equals(other.token_type, token_type)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.response_code, response_code) ||
                const DeepCollectionEquality()
                    .equals(other.response_code, response_code)) &&
            (identical(other.user_data, user_data) ||
                const DeepCollectionEquality()
                    .equals(other.user_data, user_data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(access_token) ^
      const DeepCollectionEquality().hash(token_type) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(response_code) ^
      const DeepCollectionEquality().hash(user_data);

  @JsonKey(ignore: true)
  @override
  _$AccessTokenModelCopyWith<_AccessTokenModel> get copyWith =>
      __$AccessTokenModelCopyWithImpl<_AccessTokenModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AccessTokenModelToJson(this);
  }
}

abstract class _AccessTokenModel implements AccessTokenModel {
  factory _AccessTokenModel(
      {String? access_token,
      String? token_type,
      String? message,
      String? gender,
      bool? status,
      int? response_code,
      UserModel? user_data}) = _$_AccessTokenModel;

  factory _AccessTokenModel.fromJson(Map<String, dynamic> json) =
      _$_AccessTokenModel.fromJson;

  @override
  String? get access_token => throw _privateConstructorUsedError;
  @override
  String? get token_type => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get gender => throw _privateConstructorUsedError;
  @override
  bool? get status => throw _privateConstructorUsedError;
  @override
  int? get response_code => throw _privateConstructorUsedError;
  @override
  UserModel? get user_data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AccessTokenModelCopyWith<_AccessTokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
class _$UserModelTearOff {
  const _$UserModelTearOff();

  _UserModel call(
      {required int id,
      String? name,
      String? email,
      String? image,
      bool? is_email_verified,
      String? mobile,
      String? type,
      String? created_at}) {
    return _UserModel(
      id: id,
      name: name,
      email: email,
      image: image,
      is_email_verified: is_email_verified,
      mobile: mobile,
      type: type,
      created_at: created_at,
    );
  }

  UserModel fromJson(Map<String, Object> json) {
    return UserModel.fromJson(json);
  }
}

/// @nodoc
const $UserModel = _$UserModelTearOff();

/// @nodoc
mixin _$UserModel {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  bool? get is_email_verified => throw _privateConstructorUsedError;
  String? get mobile => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? name,
      String? email,
      String? image,
      bool? is_email_verified,
      String? mobile,
      String? type,
      String? created_at});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? image = freezed,
    Object? is_email_verified = freezed,
    Object? mobile = freezed,
    Object? type = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      is_email_verified: is_email_verified == freezed
          ? _value.is_email_verified
          : is_email_verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(
          _UserModel value, $Res Function(_UserModel) then) =
      __$UserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? name,
      String? email,
      String? image,
      bool? is_email_verified,
      String? mobile,
      String? type,
      String? created_at});
}

/// @nodoc
class __$UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(_UserModel _value, $Res Function(_UserModel) _then)
      : super(_value, (v) => _then(v as _UserModel));

  @override
  _UserModel get _value => super._value as _UserModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? image = freezed,
    Object? is_email_verified = freezed,
    Object? mobile = freezed,
    Object? type = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_UserModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      is_email_verified: is_email_verified == freezed
          ? _value.is_email_verified
          : is_email_verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      mobile: mobile == freezed
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  _$_UserModel(
      {required this.id,
      this.name,
      this.email,
      this.image,
      this.is_email_verified,
      this.mobile,
      this.type,
      this.created_at});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UserModelFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? image;
  @override
  final bool? is_email_verified;
  @override
  final String? mobile;
  @override
  final String? type;
  @override
  final String? created_at;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, image: $image, is_email_verified: $is_email_verified, mobile: $mobile, type: $type, created_at: $created_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.is_email_verified, is_email_verified) ||
                const DeepCollectionEquality()
                    .equals(other.is_email_verified, is_email_verified)) &&
            (identical(other.mobile, mobile) ||
                const DeepCollectionEquality().equals(other.mobile, mobile)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(is_email_verified) ^
      const DeepCollectionEquality().hash(mobile) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(created_at);

  @JsonKey(ignore: true)
  @override
  _$UserModelCopyWith<_UserModel> get copyWith =>
      __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserModelToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {required int id,
      String? name,
      String? email,
      String? image,
      bool? is_email_verified,
      String? mobile,
      String? type,
      String? created_at}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  bool? get is_email_verified => throw _privateConstructorUsedError;
  @override
  String? get mobile => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  String? get created_at => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserModelCopyWith<_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
