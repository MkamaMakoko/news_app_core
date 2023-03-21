import 'package:freezed_annotation/freezed_annotation.dart';

part 'online_asset.freezed.dart';

@freezed
class OnlineAsset with _$OnlineAsset {
  const factory OnlineAsset.image({
    required String id,
    required String name,
    required String url,
  }) = OnlineImageAsset;

  const factory OnlineAsset.unknown({
    required String id,
    required String name,
  }) = UnknownOnlineAsset;
}
