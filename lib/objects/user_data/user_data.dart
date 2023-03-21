import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';

@freezed
class UserData with _$UserData {
  factory UserData({
    required String id,
    required String displayName,
    required String? photoUrl,
    required bool admin,
    required bool banned,
  }) = _UserData;
}
