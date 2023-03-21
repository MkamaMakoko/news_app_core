// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Comment {
  String get id => throw _privateConstructorUsedError;
  UserData get userData => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  bool get hidden => throw _privateConstructorUsedError;
  bool get pinned => throw _privateConstructorUsedError;
  bool get edited => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call(
      {String id,
      UserData userData,
      DateTime time,
      String comment,
      bool hidden,
      bool pinned,
      bool edited});

  $UserDataCopyWith<$Res> get userData;
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userData = null,
    Object? time = null,
    Object? comment = null,
    Object? hidden = null,
    Object? pinned = null,
    Object? edited = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      hidden: null == hidden
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool,
      pinned: null == pinned
          ? _value.pinned
          : pinned // ignore: cast_nullable_to_non_nullable
              as bool,
      edited: null == edited
          ? _value.edited
          : edited // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_CommentCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$_CommentCopyWith(
          _$_Comment value, $Res Function(_$_Comment) then) =
      __$$_CommentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      UserData userData,
      DateTime time,
      String comment,
      bool hidden,
      bool pinned,
      bool edited});

  @override
  $UserDataCopyWith<$Res> get userData;
}

/// @nodoc
class __$$_CommentCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$_Comment>
    implements _$$_CommentCopyWith<$Res> {
  __$$_CommentCopyWithImpl(_$_Comment _value, $Res Function(_$_Comment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userData = null,
    Object? time = null,
    Object? comment = null,
    Object? hidden = null,
    Object? pinned = null,
    Object? edited = null,
  }) {
    return _then(_$_Comment(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      hidden: null == hidden
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool,
      pinned: null == pinned
          ? _value.pinned
          : pinned // ignore: cast_nullable_to_non_nullable
              as bool,
      edited: null == edited
          ? _value.edited
          : edited // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Comment implements _Comment {
  _$_Comment(
      {required this.id,
      required this.userData,
      required this.time,
      required this.comment,
      required this.hidden,
      required this.pinned,
      required this.edited});

  @override
  final String id;
  @override
  final UserData userData;
  @override
  final DateTime time;
  @override
  final String comment;
  @override
  final bool hidden;
  @override
  final bool pinned;
  @override
  final bool edited;

  @override
  String toString() {
    return 'Comment(id: $id, userData: $userData, time: $time, comment: $comment, hidden: $hidden, pinned: $pinned, edited: $edited)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Comment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.hidden, hidden) || other.hidden == hidden) &&
            (identical(other.pinned, pinned) || other.pinned == pinned) &&
            (identical(other.edited, edited) || other.edited == edited));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, userData, time, comment, hidden, pinned, edited);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      __$$_CommentCopyWithImpl<_$_Comment>(this, _$identity);
}

abstract class _Comment implements Comment {
  factory _Comment(
      {required final String id,
      required final UserData userData,
      required final DateTime time,
      required final String comment,
      required final bool hidden,
      required final bool pinned,
      required final bool edited}) = _$_Comment;

  @override
  String get id;
  @override
  UserData get userData;
  @override
  DateTime get time;
  @override
  String get comment;
  @override
  bool get hidden;
  @override
  bool get pinned;
  @override
  bool get edited;
  @override
  @JsonKey(ignore: true)
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      throw _privateConstructorUsedError;
}
