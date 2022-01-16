// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'banner_modal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BannerModal _$BannerModalFromJson(Map<String, dynamic> json) {
  return _BannerModal.fromJson(json);
}

/// @nodoc
class _$BannerModalTearOff {
  const _$BannerModalTearOff();

  _BannerModal call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'url') String? url}) {
    return _BannerModal(
      title: title,
      image: image,
      url: url,
    );
  }

  BannerModal fromJson(Map<String, Object> json) {
    return BannerModal.fromJson(json);
  }
}

/// @nodoc
const $BannerModal = _$BannerModalTearOff();

/// @nodoc
mixin _$BannerModal {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerModalCopyWith<BannerModal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerModalCopyWith<$Res> {
  factory $BannerModalCopyWith(
          BannerModal value, $Res Function(BannerModal) then) =
      _$BannerModalCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'url') String? url});
}

/// @nodoc
class _$BannerModalCopyWithImpl<$Res> implements $BannerModalCopyWith<$Res> {
  _$BannerModalCopyWithImpl(this._value, this._then);

  final BannerModal _value;
  // ignore: unused_field
  final $Res Function(BannerModal) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? image = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
abstract class _$BannerModalCopyWith<$Res>
    implements $BannerModalCopyWith<$Res> {
  factory _$BannerModalCopyWith(
          _BannerModal value, $Res Function(_BannerModal) then) =
      __$BannerModalCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'url') String? url});
}

/// @nodoc
class __$BannerModalCopyWithImpl<$Res> extends _$BannerModalCopyWithImpl<$Res>
    implements _$BannerModalCopyWith<$Res> {
  __$BannerModalCopyWithImpl(
      _BannerModal _value, $Res Function(_BannerModal) _then)
      : super(_value, (v) => _then(v as _BannerModal));

  @override
  _BannerModal get _value => super._value as _BannerModal;

  @override
  $Res call({
    Object? title = freezed,
    Object? image = freezed,
    Object? url = freezed,
  }) {
    return _then(_BannerModal(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
class _$_BannerModal implements _BannerModal {
  _$_BannerModal(
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'url') this.url});

  factory _$_BannerModal.fromJson(Map<String, dynamic> json) =>
      _$_$_BannerModalFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'url')
  final String? url;

  @override
  String toString() {
    return 'BannerModal(title: $title, image: $image, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BannerModal &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$BannerModalCopyWith<_BannerModal> get copyWith =>
      __$BannerModalCopyWithImpl<_BannerModal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BannerModalToJson(this);
  }
}

abstract class _BannerModal implements BannerModal {
  factory _BannerModal(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'url') String? url}) = _$_BannerModal;

  factory _BannerModal.fromJson(Map<String, dynamic> json) =
      _$_BannerModal.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BannerModalCopyWith<_BannerModal> get copyWith =>
      throw _privateConstructorUsedError;
}
