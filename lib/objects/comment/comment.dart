import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app_core/objects/user_data/user_data.dart';

part 'comment.freezed.dart';

@freezed
class Comment with _$Comment {
  factory Comment({
    required String id,
    required UserData userData,
    required DateTime time,
    required String comment,
    required bool hidden,
    required bool pinned,
    required bool edited,
  }) = _Comment;
}
