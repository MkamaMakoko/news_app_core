import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app_core/objects/online_asset/online_asset.dart';

part 'news_item.freezed.dart';

@freezed
class NewsItem with _$NewsItem {
  factory NewsItem.text({
    required String id,
    required int index,
    required String text,
    required bool bold,
    required bool italic,
    required bool underline,
    required bool lineThrough,
  }) = TextNewsItem;

  factory NewsItem.asset({
    required String id,
    required int index,
    required String caption,
    required OnlineAsset asset,
  }) = AssetNewsItem;

  factory NewsItem.unkonwn({
    required String id,
    required int index,
  }) = UnknownNewsItem;
}
