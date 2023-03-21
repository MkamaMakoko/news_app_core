import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_category.freezed.dart';

@freezed
class NewsCategory with _$NewsCategory {
  factory NewsCategory({
    required String id,
    required String name,
    required String description,
  }) = _NewsCategory;
}
