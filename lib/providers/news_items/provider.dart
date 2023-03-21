import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:news_app_core/objects/news_item/news_item.dart';
import 'package:news_app_core/providers/online_assets/providers.dart';
import 'package:news_app_core/utils/data_provider_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
class NewsItems extends _$NewsItems with DataProviderMixin<NewsItem> {
  @override
  FutureOr<List<NewsItem>> build(String newsID) async => fetchData;

  @override
  String get collectionPath => 'news_items';

  @override
  Query<Map<String, dynamic>>? get query =>
      collectionRef.orderBy(_Key.itemIndex.name);

  @override
  CollectionReference<Map<String, dynamic>> get collectionRef =>
      super.collectionRef.doc('news_$newsID').collection(collectionPath);

  @override
  FutureOr<NewsItem> objectFromDoc(
      DocumentSnapshot<Map<String, dynamic>> doc) async {
    final id = doc.id;
    final type = (doc[_Key.type.name] as String).itemType;
    final index = doc[_Key.itemIndex.name];
    switch (type) {
      case _ItemType.text:
        return NewsItem.text(
          id: id,
          index: index,
          text: doc[_Key.text.name],
          bold: doc[_Key.bold.name],
          italic: doc[_Key.italic.name],
          underline: doc[_Key.underline.name],
          lineThrough: doc[_Key.lineThrough.name],
        );
      case _ItemType.asset:
        return NewsItem.asset(
          id: id,
          index: index,
          caption: doc[_Key.caption.name],
          asset: await ref
              .watch(onlineAssetProvider(id: doc[_Key.assetID.name]).future),
        );
      case _ItemType.unknown:
        return NewsItem.unkonwn(
          id: id,
          index: index,
        );
    }
  }

  void add(List<NewsItem> items) {
    addMultipleData([
      for (final item in items)
        {
          _Key.itemIndex.name: item.index,
          ...item.map<Map<String, Object?>>(
            text: (value) => _textItemMap(value),
            asset: (value) => _assetItemMap(value),
            unkonwn: (_) => throw Exception('Unkonw news item type'),
          )
        }
    ]);
  }

  Map<String, Object?> _textItemMap(TextNewsItem item) => {
        _Key.type.name: _ItemType.text.name,
        _Key.text.name: item.text,
        _Key.bold.name: item.bold,
        _Key.italic.name: item.italic,
        _Key.underline.name: item.underline,
        _Key.lineThrough.name: item.lineThrough,
      };

  Map<String, Object?> _assetItemMap(AssetNewsItem item) => {
        _Key.type.name: _ItemType.asset.name,
        _Key.caption.name: item.caption,
        _Key.assetID.name: item.asset.id,
      };
}

enum _Key {
  type,
  itemIndex,
  text,
  bold,
  italic,
  underline,
  lineThrough,
  caption,
  assetID
}

enum _ItemType { text, asset, unknown }

extension on String {
  _ItemType get itemType {
    for (final value in _ItemType.values) {
      if (value.name == this) return value;
    }
    return _ItemType.unknown;
  }
}
