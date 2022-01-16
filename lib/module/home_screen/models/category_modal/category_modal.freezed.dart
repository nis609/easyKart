// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'category_modal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryModal _$CategoryModalFromJson(Map<String, dynamic> json) {
  return _CategoryModal.fromJson(json);
}

/// @nodoc
class _$CategoryModalTearOff {
  const _$CategoryModalTearOff();

  _CategoryModal call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'url') String? url}) {
    return _CategoryModal(
      name: name,
      image: image,
      url: url,
    );
  }

  CategoryModal fromJson(Map<String, Object> json) {
    return CategoryModal.fromJson(json);
  }
}

/// @nodoc
const $CategoryModal = _$CategoryModalTearOff();

/// @nodoc
mixin _$CategoryModal {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryModalCopyWith<CategoryModal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModalCopyWith<$Res> {
  factory $CategoryModalCopyWith(
          CategoryModal value, $Res Function(CategoryModal) then) =
      _$CategoryModalCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'url') String? url});
}

/// @nodoc
class _$CategoryModalCopyWithImpl<$Res>
    implements $CategoryModalCopyWith<$Res> {
  _$CategoryModalCopyWithImpl(this._value, this._then);

  final CategoryModal _value;
  // ignore: unused_field
  final $Res Function(CategoryModal) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CategoryModalCopyWith<$Res>
    implements $CategoryModalCopyWith<$Res> {
  factory _$CategoryModalCopyWith(
          _CategoryModal value, $Res Function(_CategoryModal) then) =
      __$CategoryModalCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'url') String? url});
}

/// @nodoc
class __$CategoryModalCopyWithImpl<$Res>
    extends _$CategoryModalCopyWithImpl<$Res>
    implements _$CategoryModalCopyWith<$Res> {
  __$CategoryModalCopyWithImpl(
      _CategoryModal _value, $Res Function(_CategoryModal) _then)
      : super(_value, (v) => _then(v as _CategoryModal));

  @override
  _CategoryModal get _value => super._value as _CategoryModal;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? url = freezed,
  }) {
    return _then(_CategoryModal(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryModal implements _CategoryModal {
  _$_CategoryModal(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'url') this.url});

  factory _$_CategoryModal.fromJson(Map<String, dynamic> json) =>
      _$_$_CategoryModalFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'url')
  final String? url;

  @override
  String toString() {
    return 'CategoryModal(name: $name, image: $image, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryModal &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$CategoryModalCopyWith<_CategoryModal> get copyWith =>
      __$CategoryModalCopyWithImpl<_CategoryModal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CategoryModalToJson(this);
  }
}

abstract class _CategoryModal implements CategoryModal {
  factory _CategoryModal(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'url') String? url}) = _$_CategoryModal;

  factory _CategoryModal.fromJson(Map<String, dynamic> json) =
      _$_CategoryModal.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategoryModalCopyWith<_CategoryModal> get copyWith =>
      throw _privateConstructorUsedError;
}
