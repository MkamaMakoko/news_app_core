import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:news_app_core/objects/news_category/news_category.dart';
import 'package:news_app_core/objects/online_asset/online_asset.dart';
import 'package:news_app_core/providers/news_categories/providers.dart';
import 'package:news_app_core/providers/online_assets/providers.dart';
import 'package:news_app_core/providers/users_data/providers.dart';
import 'package:news_app_core/objects/news/news.dart';
import 'package:news_app_core/utils/data_provider_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'providers.g.dart';

@riverpod
FutureOr<News> singleNews(SingleNewsRef ref, {required String id}) async =>
    await ref.watch(newsListProvider
        .selectAsync((data) => data.firstWhere((element) => element.id == id)));

@riverpod
class NewsList extends _$NewsList with DataProviderMixin<News> {
  @override
  FutureOr<List<News>> build() async => await fetchData;
  @override
  String get collectionPath => 'news';

  @override
  Query<Map<String, dynamic>>? get query =>
      collectionRef.orderBy(_Key.validFrom.name);

  @override
  FutureOr<News> objectFromDoc(
      DocumentSnapshot<Map<String, dynamic>> doc) async {
    return News(
      id: doc.id,
      validFrom: (doc[_Key.validFrom.name] as Timestamp).toDate(),
      validTo: (doc[_Key.validTo.name] as Timestamp).toDate(),
      hidden: doc[_Key.hidden.name],
      pinned: doc[_Key.pinned.name],
      title: doc[_Key.title.name],
      subtitle: doc[_Key.subtitle.name],
      coverImage: (await ref.watch(
              onlineAssetProvider(id: doc[_Key.coverImageID.name]).future))
          as OnlineImageAsset,
      userData:
          await ref.watch(userDataProvider(id: doc[_Key.userID.name]).future),
      categories: [
        for (final id in doc[_Key.categoriesID.name] as List<String>)
          await ref.watch(newsCategoryProvider(id: id).future)
      ],
    );
  }

  void add(
          {required String title,
          required String subtitle,
          required bool hidden,
          required bool pinned,
          required DateTime validFrom,
          required DateTime validTo,
          required OnlineImageAsset coverImage,
          required List<NewsCategory> categories}) =>
      addAsyncData(() async => {
            _Key.title.name: title,
            _Key.subtitle.name: subtitle,
            _Key.hidden.name: hidden,
            _Key.pinned.name: pinned,
            _Key.validFrom.name: validFrom,
            _Key.validTo.name: validTo,
            _Key.userID.name: await ref.watch(currentUserDataProvider.future),
            _Key.coverImageID.name: coverImage.id,
            _Key.categoriesID.name: [
              for (final category in categories) category.id
            ]
          });

  void edit(String id,
          {String? title,
          String? subtitle,
          bool? hide,
          bool? pin,
          DateTime? validFrom,
          DateTime? validTo,
          OnlineImageAsset? coverImage,
          List<NewsCategory>? categories}) =>
      editData(data: {
        if (title != null) _Key.title.name: title,
        if (subtitle != null) _Key.subtitle.name: subtitle,
        if (hide != null) _Key.hidden.name: hide,
        if (pin != null) _Key.pinned.name: pin,
        if (validFrom != null) _Key.validFrom.name: validFrom,
        if (validTo != null) _Key.validTo.name: validTo,
        if (coverImage != null) _Key.coverImageID.name: coverImage.id,
        if (categories != null)
          _Key.categoriesID.name: [
            for (final category in categories) category.id
          ]
      }, id: id);
}

enum _Key {
  title,
  subtitle,
  coverImageID,
  userID,
  categoriesID,
  validTo,
  hidden,
  pinned,
  validFrom
}
