// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'online_asset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnlineAsset {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String name, String url) image,
    required TResult Function(String id, String name) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String name, String url)? image,
    TResult? Function(String id, String name)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, String url)? image,
    TResult Function(String id, String name)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnlineImageAsset value) image,
    required TResult Function(UnknownOnlineAsset value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnlineImageAsset value)? image,
    TResult? Function(UnknownOnlineAsset value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnlineImageAsset value)? image,
    TResult Function(UnknownOnlineAsset value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnlineAssetCopyWith<OnlineAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlineAssetCopyWith<$Res> {
  factory $OnlineAssetCopyWith(
          OnlineAsset value, $Res Function(OnlineAsset) then) =
      _$OnlineAssetCopyWithImpl<$Res, OnlineAsset>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$OnlineAssetCopyWithImpl<$Res, $Val extends OnlineAsset>
    implements $OnlineAssetCopyWith<$Res> {
  _$OnlineAssetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnlineImageAssetCopyWith<$Res>
    implements $OnlineAssetCopyWith<$Res> {
  factory _$$OnlineImageAssetCopyWith(
          _$OnlineImageAsset value, $Res Function(_$OnlineImageAsset) then) =
      __$$OnlineImageAssetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String url});
}

/// @nodoc
class __$$OnlineImageAssetCopyWithImpl<$Res>
    extends _$OnlineAssetCopyWithImpl<$Res, _$OnlineImageAsset>
    implements _$$OnlineImageAssetCopyWith<$Res> {
  __$$OnlineImageAssetCopyWithImpl(
      _$OnlineImageAsset _value, $Res Function(_$OnlineImageAsset) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$OnlineImageAsset(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnlineImageAsset implements OnlineImageAsset {
  const _$OnlineImageAsset(
      {required this.id, required this.name, required this.url});

  @override
  final String id;
  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'OnlineAsset.image(id: $id, name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnlineImageAsset &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnlineImageAssetCopyWith<_$OnlineImageAsset> get copyWith =>
      __$$OnlineImageAssetCopyWithImpl<_$OnlineImageAsset>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String name, String url) image,
    required TResult Function(String id, String name) unknown,
  }) {
    return image(id, name, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String name, String url)? image,
    TResult? Function(String id, String name)? unknown,
  }) {
    return image?.call(id, name, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, String url)? image,
    TResult Function(String id, String name)? unknown,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(id, name, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnlineImageAsset value) image,
    required TResult Function(UnknownOnlineAsset value) unknown,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnlineImageAsset value)? image,
    TResult? Function(UnknownOnlineAsset value)? unknown,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnlineImageAsset value)? image,
    TResult Function(UnknownOnlineAsset value)? unknown,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }
}

abstract class OnlineImageAsset implements OnlineAsset {
  const factory OnlineImageAsset(
      {required final String id,
      required final String name,
      required final String url}) = _$OnlineImageAsset;

  @override
  String get id;
  @override
  String get name;
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$OnlineImageAssetCopyWith<_$OnlineImageAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownOnlineAssetCopyWith<$Res>
    implements $OnlineAssetCopyWith<$Res> {
  factory _$$UnknownOnlineAssetCopyWith(_$UnknownOnlineAsset value,
          $Res Function(_$UnknownOnlineAsset) then) =
      __$$UnknownOnlineAssetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$UnknownOnlineAssetCopyWithImpl<$Res>
    extends _$OnlineAssetCopyWithImpl<$Res, _$UnknownOnlineAsset>
    implements _$$UnknownOnlineAssetCopyWith<$Res> {
  __$$UnknownOnlineAssetCopyWithImpl(
      _$UnknownOnlineAsset _value, $Res Function(_$UnknownOnlineAsset) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$UnknownOnlineAsset(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnknownOnlineAsset implements UnknownOnlineAsset {
  const _$UnknownOnlineAsset({required this.id, required this.name});

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'OnlineAsset.unknown(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownOnlineAsset &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownOnlineAssetCopyWith<_$UnknownOnlineAsset> get copyWith =>
      __$$UnknownOnlineAssetCopyWithImpl<_$UnknownOnlineAsset>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String name, String url) image,
    required TResult Function(String id, String name) unknown,
  }) {
    return unknown(id, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String name, String url)? image,
    TResult? Function(String id, String name)? unknown,
  }) {
    return unknown?.call(id, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, String url)? image,
    TResult Function(String id, String name)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(id, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnlineImageAsset value) image,
    required TResult Function(UnknownOnlineAsset value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnlineImageAsset value)? image,
    TResult? Function(UnknownOnlineAsset value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnlineImageAsset value)? image,
    TResult Function(UnknownOnlineAsset value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownOnlineAsset implements OnlineAsset {
  const factory UnknownOnlineAsset(
      {required final String id,
      required final String name}) = _$UnknownOnlineAsset;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$UnknownOnlineAssetCopyWith<_$UnknownOnlineAsset> get copyWith =>
      throw _privateConstructorUsedError;
}
