import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app_core/objects/news_category/news_category.dart';
import 'package:news_app_core/objects/online_asset/online_asset.dart';
import 'package:news_app_core/objects/user_data/user_data.dart';

part 'news.freezed.dart';

@freezed
class News with _$News {
  const News._();
  factory News({
    required String id,
    required DateTime validFrom,
    required DateTime validTo,
    required bool hidden,
    required bool pinned,
    required String title,
    required String subtitle,
    required OnlineImageAsset coverImage,
    required UserData userData,
    required List<NewsCategory> categories,
  }) = _News;

  bool get outDated => validTo.isBefore(DateTime.now());

  bool get visible => !hidden && validFrom.isAfter(DateTime.now());
}
