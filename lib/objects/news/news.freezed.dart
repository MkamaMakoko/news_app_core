// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$News {
  String get id => throw _privateConstructorUsedError;
  DateTime get validFrom => throw _privateConstructorUsedError;
  DateTime get validTo => throw _privateConstructorUsedError;
  bool get hidden => throw _privateConstructorUsedError;
  bool get pinned => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  OnlineImageAsset get coverImage => throw _privateConstructorUsedError;
  UserData get userData => throw _privateConstructorUsedError;
  List<NewsCategory> get categories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsCopyWith<News> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCopyWith<$Res> {
  factory $NewsCopyWith(News value, $Res Function(News) then) =
      _$NewsCopyWithImpl<$Res, News>;
  @useResult
  $Res call(
      {String id,
      DateTime validFrom,
      DateTime validTo,
      bool hidden,
      bool pinned,
      String title,
      String subtitle,
      OnlineImageAsset coverImage,
      UserData userData,
      List<NewsCategory> categories});

  $UserDataCopyWith<$Res> get userData;
}

/// @nodoc
class _$NewsCopyWithImpl<$Res, $Val extends News>
    implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? validFrom = null,
    Object? validTo = null,
    Object? hidden = null,
    Object? pinned = null,
    Object? title = null,
    Object? subtitle = null,
    Object? coverImage = freezed,
    Object? userData = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      validFrom: null == validFrom
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      validTo: null == validTo
          ? _value.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hidden: null == hidden
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool,
      pinned: null == pinned
          ? _value.pinned
          : pinned // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as OnlineImageAsset,
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<NewsCategory>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get userData {
    return $UserDataCopyWith<$Res>(_value.userData, (value) {
      return _then(_value.copyWith(userData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewsCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$$_NewsCopyWith(_$_News value, $Res Function(_$_News) then) =
      __$$_NewsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime validFrom,
      DateTime validTo,
      bool hidden,
      bool pinned,
      String title,
      String subtitle,
      OnlineImageAsset coverImage,
      UserData userData,
      List<NewsCategory> categories});

  @override
  $UserDataCopyWith<$Res> get userData;
}

/// @nodoc
class __$$_NewsCopyWithImpl<$Res> extends _$NewsCopyWithImpl<$Res, _$_News>
    implements _$$_NewsCopyWith<$Res> {
  __$$_NewsCopyWithImpl(_$_News _value, $Res Function(_$_News) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? validFrom = null,
    Object? validTo = null,
    Object? hidden = null,
    Object? pinned = null,
    Object? title = null,
    Object? subtitle = null,
    Object? coverImage = freezed,
    Object? userData = null,
    Object? categories = null,
  }) {
    return _then(_$_News(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      validFrom: null == validFrom
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      validTo: null == validTo
          ? _value.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hidden: null == hidden
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool,
      pinned: null == pinned
          ? _value.pinned
          : pinned // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      coverImage: freezed == coverImage
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as OnlineImageAsset,
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<NewsCategory>,
    ));
  }
}

/// @nodoc

class _$_News extends _News {
  _$_News(
      {required this.id,
      required this.validFrom,
      required this.validTo,
      required this.hidden,
      required this.pinned,
      required this.title,
      required this.subtitle,
      required this.coverImage,
      required this.userData,
      required final List<NewsCategory> categories})
      : _categories = categories,
        super._();

  @override
  final String id;
  @override
  final DateTime validFrom;
  @override
  final DateTime validTo;
  @override
  final bool hidden;
  @override
  final bool pinned;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final OnlineImageAsset coverImage;
  @override
  final UserData userData;
  final List<NewsCategory> _categories;
  @override
  List<NewsCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'News(id: $id, validFrom: $validFrom, validTo: $validTo, hidden: $hidden, pinned: $pinned, title: $title, subtitle: $subtitle, coverImage: $coverImage, userData: $userData, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_News &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.validFrom, validFrom) ||
                other.validFrom == validFrom) &&
            (identical(other.validTo, validTo) || other.validTo == validTo) &&
            (identical(other.hidden, hidden) || other.hidden == hidden) &&
            (identical(other.pinned, pinned) || other.pinned == pinned) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            const DeepCollectionEquality()
                .equals(other.coverImage, coverImage) &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      validFrom,
      validTo,
      hidden,
      pinned,
      title,
      subtitle,
      const DeepCollectionEquality().hash(coverImage),
      userData,
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsCopyWith<_$_News> get copyWith =>
      __$$_NewsCopyWithImpl<_$_News>(this, _$identity);
}

abstract class _News extends News {
  factory _News(
      {required final String id,
      required final DateTime validFrom,
      required final DateTime validTo,
      required final bool hidden,
      required final bool pinned,
      required final String title,
      required final String subtitle,
      required final OnlineImageAsset coverImage,
      required final UserData userData,
      required final List<NewsCategory> categories}) = _$_News;
  _News._() : super._();

  @override
  String get id;
  @override
  DateTime get validFrom;
  @override
  DateTime get validTo;
  @override
  bool get hidden;
  @override
  bool get pinned;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  OnlineImageAsset get coverImage;
  @override
  UserData get userData;
  @override
  List<NewsCategory> get categories;
  @override
  @JsonKey(ignore: true)
  _$$_NewsCopyWith<_$_News> get copyWith => throw _privateConstructorUsedError;
}
