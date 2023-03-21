// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsItem {
  String get id => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, int index, String text, bool bold,
            bool italic, bool underline, bool lineThrough)
        text,
    required TResult Function(
            String id, int index, String caption, OnlineAsset asset)
        asset,
    required TResult Function(String id, int index) unkonwn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, int index, String text, bool bold, bool italic,
            bool underline, bool lineThrough)?
        text,
    TResult? Function(String id, int index, String caption, OnlineAsset asset)?
        asset,
    TResult? Function(String id, int index)? unkonwn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, int index, String text, bool bold, bool italic,
            bool underline, bool lineThrough)?
        text,
    TResult Function(String id, int index, String caption, OnlineAsset asset)?
        asset,
    TResult Function(String id, int index)? unkonwn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextNewsItem value) text,
    required TResult Function(AssetNewsItem value) asset,
    required TResult Function(UnknownNewsItem value) unkonwn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextNewsItem value)? text,
    TResult? Function(AssetNewsItem value)? asset,
    TResult? Function(UnknownNewsItem value)? unkonwn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextNewsItem value)? text,
    TResult Function(AssetNewsItem value)? asset,
    TResult Function(UnknownNewsItem value)? unkonwn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsItemCopyWith<NewsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsItemCopyWith<$Res> {
  factory $NewsItemCopyWith(NewsItem value, $Res Function(NewsItem) then) =
      _$NewsItemCopyWithImpl<$Res, NewsItem>;
  @useResult
  $Res call({String id, int index});
}

/// @nodoc
class _$NewsItemCopyWithImpl<$Res, $Val extends NewsItem>
    implements $NewsItemCopyWith<$Res> {
  _$NewsItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextNewsItemCopyWith<$Res>
    implements $NewsItemCopyWith<$Res> {
  factory _$$TextNewsItemCopyWith(
          _$TextNewsItem value, $Res Function(_$TextNewsItem) then) =
      __$$TextNewsItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int index,
      String text,
      bool bold,
      bool italic,
      bool underline,
      bool lineThrough});
}

/// @nodoc
class __$$TextNewsItemCopyWithImpl<$Res>
    extends _$NewsItemCopyWithImpl<$Res, _$TextNewsItem>
    implements _$$TextNewsItemCopyWith<$Res> {
  __$$TextNewsItemCopyWithImpl(
      _$TextNewsItem _value, $Res Function(_$TextNewsItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? index = null,
    Object? text = null,
    Object? bold = null,
    Object? italic = null,
    Object? underline = null,
    Object? lineThrough = null,
  }) {
    return _then(_$TextNewsItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      bold: null == bold
          ? _value.bold
          : bold // ignore: cast_nullable_to_non_nullable
              as bool,
      italic: null == italic
          ? _value.italic
          : italic // ignore: cast_nullable_to_non_nullable
              as bool,
      underline: null == underline
          ? _value.underline
          : underline // ignore: cast_nullable_to_non_nullable
              as bool,
      lineThrough: null == lineThrough
          ? _value.lineThrough
          : lineThrough // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TextNewsItem implements TextNewsItem {
  _$TextNewsItem(
      {required this.id,
      required this.index,
      required this.text,
      required this.bold,
      required this.italic,
      required this.underline,
      required this.lineThrough});

  @override
  final String id;
  @override
  final int index;
  @override
  final String text;
  @override
  final bool bold;
  @override
  final bool italic;
  @override
  final bool underline;
  @override
  final bool lineThrough;

  @override
  String toString() {
    return 'NewsItem.text(id: $id, index: $index, text: $text, bold: $bold, italic: $italic, underline: $underline, lineThrough: $lineThrough)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextNewsItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.bold, bold) || other.bold == bold) &&
            (identical(other.italic, italic) || other.italic == italic) &&
            (identical(other.underline, underline) ||
                other.underline == underline) &&
            (identical(other.lineThrough, lineThrough) ||
                other.lineThrough == lineThrough));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, index, text, bold, italic, underline, lineThrough);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextNewsItemCopyWith<_$TextNewsItem> get copyWith =>
      __$$TextNewsItemCopyWithImpl<_$TextNewsItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, int index, String text, bool bold,
            bool italic, bool underline, bool lineThrough)
        text,
    required TResult Function(
            String id, int index, String caption, OnlineAsset asset)
        asset,
    required TResult Function(String id, int index) unkonwn,
  }) {
    return text(id, index, this.text, bold, italic, underline, lineThrough);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, int index, String text, bool bold, bool italic,
            bool underline, bool lineThrough)?
        text,
    TResult? Function(String id, int index, String caption, OnlineAsset asset)?
        asset,
    TResult? Function(String id, int index)? unkonwn,
  }) {
    return text?.call(
        id, index, this.text, bold, italic, underline, lineThrough);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, int index, String text, bool bold, bool italic,
            bool underline, bool lineThrough)?
        text,
    TResult Function(String id, int index, String caption, OnlineAsset asset)?
        asset,
    TResult Function(String id, int index)? unkonwn,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(id, index, this.text, bold, italic, underline, lineThrough);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextNewsItem value) text,
    required TResult Function(AssetNewsItem value) asset,
    required TResult Function(UnknownNewsItem value) unkonwn,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextNewsItem value)? text,
    TResult? Function(AssetNewsItem value)? asset,
    TResult? Function(UnknownNewsItem value)? unkonwn,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextNewsItem value)? text,
    TResult Function(AssetNewsItem value)? asset,
    TResult Function(UnknownNewsItem value)? unkonwn,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class TextNewsItem implements NewsItem {
  factory TextNewsItem(
      {required final String id,
      required final int index,
      required final String text,
      required final bool bold,
      required final bool italic,
      required final bool underline,
      required final bool lineThrough}) = _$TextNewsItem;

  @override
  String get id;
  @override
  int get index;
  String get text;
  bool get bold;
  bool get italic;
  bool get underline;
  bool get lineThrough;
  @override
  @JsonKey(ignore: true)
  _$$TextNewsItemCopyWith<_$TextNewsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssetNewsItemCopyWith<$Res>
    implements $NewsItemCopyWith<$Res> {
  factory _$$AssetNewsItemCopyWith(
          _$AssetNewsItem value, $Res Function(_$AssetNewsItem) then) =
      __$$AssetNewsItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int index, String caption, OnlineAsset asset});

  $OnlineAssetCopyWith<$Res> get asset;
}

/// @nodoc
class __$$AssetNewsItemCopyWithImpl<$Res>
    extends _$NewsItemCopyWithImpl<$Res, _$AssetNewsItem>
    implements _$$AssetNewsItemCopyWith<$Res> {
  __$$AssetNewsItemCopyWithImpl(
      _$AssetNewsItem _value, $Res Function(_$AssetNewsItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? index = null,
    Object? caption = null,
    Object? asset = null,
  }) {
    return _then(_$AssetNewsItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as OnlineAsset,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OnlineAssetCopyWith<$Res> get asset {
    return $OnlineAssetCopyWith<$Res>(_value.asset, (value) {
      return _then(_value.copyWith(asset: value));
    });
  }
}

/// @nodoc

class _$AssetNewsItem implements AssetNewsItem {
  _$AssetNewsItem(
      {required this.id,
      required this.index,
      required this.caption,
      required this.asset});

  @override
  final String id;
  @override
  final int index;
  @override
  final String caption;
  @override
  final OnlineAsset asset;

  @override
  String toString() {
    return 'NewsItem.asset(id: $id, index: $index, caption: $caption, asset: $asset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetNewsItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.asset, asset) || other.asset == asset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, index, caption, asset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetNewsItemCopyWith<_$AssetNewsItem> get copyWith =>
      __$$AssetNewsItemCopyWithImpl<_$AssetNewsItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, int index, String text, bool bold,
            bool italic, bool underline, bool lineThrough)
        text,
    required TResult Function(
            String id, int index, String caption, OnlineAsset asset)
        asset,
    required TResult Function(String id, int index) unkonwn,
  }) {
    return asset(id, index, caption, this.asset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, int index, String text, bool bold, bool italic,
            bool underline, bool lineThrough)?
        text,
    TResult? Function(String id, int index, String caption, OnlineAsset asset)?
        asset,
    TResult? Function(String id, int index)? unkonwn,
  }) {
    return asset?.call(id, index, caption, this.asset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, int index, String text, bool bold, bool italic,
            bool underline, bool lineThrough)?
        text,
    TResult Function(String id, int index, String caption, OnlineAsset asset)?
        asset,
    TResult Function(String id, int index)? unkonwn,
    required TResult orElse(),
  }) {
    if (asset != null) {
      return asset(id, index, caption, this.asset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextNewsItem value) text,
    required TResult Function(AssetNewsItem value) asset,
    required TResult Function(UnknownNewsItem value) unkonwn,
  }) {
    return asset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextNewsItem value)? text,
    TResult? Function(AssetNewsItem value)? asset,
    TResult? Function(UnknownNewsItem value)? unkonwn,
  }) {
    return asset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextNewsItem value)? text,
    TResult Function(AssetNewsItem value)? asset,
    TResult Function(UnknownNewsItem value)? unkonwn,
    required TResult orElse(),
  }) {
    if (asset != null) {
      return asset(this);
    }
    return orElse();
  }
}

abstract class AssetNewsItem implements NewsItem {
  factory AssetNewsItem(
      {required final String id,
      required final int index,
      required final String caption,
      required final OnlineAsset asset}) = _$AssetNewsItem;

  @override
  String get id;
  @override
  int get index;
  String get caption;
  OnlineAsset get asset;
  @override
  @JsonKey(ignore: true)
  _$$AssetNewsItemCopyWith<_$AssetNewsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownNewsItemCopyWith<$Res>
    implements $NewsItemCopyWith<$Res> {
  factory _$$UnknownNewsItemCopyWith(
          _$UnknownNewsItem value, $Res Function(_$UnknownNewsItem) then) =
      __$$UnknownNewsItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int index});
}

/// @nodoc
class __$$UnknownNewsItemCopyWithImpl<$Res>
    extends _$NewsItemCopyWithImpl<$Res, _$UnknownNewsItem>
    implements _$$UnknownNewsItemCopyWith<$Res> {
  __$$UnknownNewsItemCopyWithImpl(
      _$UnknownNewsItem _value, $Res Function(_$UnknownNewsItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? index = null,
  }) {
    return _then(_$UnknownNewsItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UnknownNewsItem implements UnknownNewsItem {
  _$UnknownNewsItem({required this.id, required this.index});

  @override
  final String id;
  @override
  final int index;

  @override
  String toString() {
    return 'NewsItem.unkonwn(id: $id, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownNewsItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownNewsItemCopyWith<_$UnknownNewsItem> get copyWith =>
      __$$UnknownNewsItemCopyWithImpl<_$UnknownNewsItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, int index, String text, bool bold,
            bool italic, bool underline, bool lineThrough)
        text,
    required TResult Function(
            String id, int index, String caption, OnlineAsset asset)
        asset,
    required TResult Function(String id, int index) unkonwn,
  }) {
    return unkonwn(id, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, int index, String text, bool bold, bool italic,
            bool underline, bool lineThrough)?
        text,
    TResult? Function(String id, int index, String caption, OnlineAsset asset)?
        asset,
    TResult? Function(String id, int index)? unkonwn,
  }) {
    return unkonwn?.call(id, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, int index, String text, bool bold, bool italic,
            bool underline, bool lineThrough)?
        text,
    TResult Function(String id, int index, String caption, OnlineAsset asset)?
        asset,
    TResult Function(String id, int index)? unkonwn,
    required TResult orElse(),
  }) {
    if (unkonwn != null) {
      return unkonwn(id, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextNewsItem value) text,
    required TResult Function(AssetNewsItem value) asset,
    required TResult Function(UnknownNewsItem value) unkonwn,
  }) {
    return unkonwn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextNewsItem value)? text,
    TResult? Function(AssetNewsItem value)? asset,
    TResult? Function(UnknownNewsItem value)? unkonwn,
  }) {
    return unkonwn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextNewsItem value)? text,
    TResult Function(AssetNewsItem value)? asset,
    TResult Function(UnknownNewsItem value)? unkonwn,
    required TResult orElse(),
  }) {
    if (unkonwn != null) {
      return unkonwn(this);
    }
    return orElse();
  }
}

abstract class UnknownNewsItem implements NewsItem {
  factory UnknownNewsItem(
      {required final String id, required final int index}) = _$UnknownNewsItem;

  @override
  String get id;
  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$UnknownNewsItemCopyWith<_$UnknownNewsItem> get copyWith =>
      throw _privateConstructorUsedError;
}
