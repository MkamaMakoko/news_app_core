import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:news_app_core/objects/online_asset/online_asset.dart';
import 'package:news_app_core/utils/data_provider_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:firebase_storage/firebase_storage.dart';
part 'providers.g.dart';

@Riverpod(dependencies: [OnlineAssets])
FutureOr<OnlineAsset> onlineAsset(OnlineAssetRef ref,
        {required String id}) async =>
    await ref.watch(onlineAssetsProvider
        .selectAsync((data) => data.firstWhere((element) => element.id == id)));

@riverpod
class OnlineAssets extends _$OnlineAssets with DataProviderMixin<OnlineAsset> {
  @override
  FutureOr<List<OnlineAsset>> build() async => await fetchData;
  final _storage = FirebaseStorage.instance;

  void editAssetName({required String name, required OnlineAsset asset}) {
    if (name != asset.name) {
      editData(data: {_Key.name.name: name}, id: asset.id);
    }
  }

  void addImageAsset({required String name, required Uint8List imageData}) =>
      addAsyncData(() async => {
            _Key.type.name: _AssetType.image,
            _Key.name.name: name,
            _Key.url.name: await _uploadFile(imageData)
          });

  Future<String> _uploadFile(Uint8List fileData) async {
    final ref = _storage.ref('assets').child('asset_${DateTime.now()}');
    return await ref
        .putData(fileData)
        .then((p0) async => await ref.getDownloadURL());
  }

  @override
  String get collectionPath => 'assets';

  @override
  FutureOr<OnlineAsset> objectFromDoc(
      DocumentSnapshot<Map<String, dynamic>> doc) {
    final type = (doc[_Key.type.name] as String).assetType;
    final name = doc[_Key.name.name];
    final id = doc.id;

    switch (type) {
      case _AssetType.image:
        return OnlineAsset.image(id: id, name: name, url: doc[_Key.url.name]);
      case _AssetType.unknown:
        return OnlineAsset.unknown(id: id, name: name);
    }
  }
}

enum _AssetType { image, unknown }

extension on String {
  _AssetType get assetType {
    for (final value in _AssetType.values) {
      if (value.name == this) return value;
    }
    return _AssetType.unknown;
  }
}

enum _Key { type, name, url }
