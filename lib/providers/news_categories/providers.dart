import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:news_app_core/objects/news_category/news_category.dart';
import 'package:news_app_core/utils/data_provider_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
FutureOr<NewsCategory> newsCategory(NewsCategoryRef ref,
        {required String id}) async =>
    await ref.watch(newsCategoriesProvider
        .selectAsync((data) => data.firstWhere((element) => element.id == id)));

@riverpod
class NewsCategories extends _$NewsCategories
    with DataProviderMixin<NewsCategory> {
  @override
  FutureOr<List<NewsCategory>> build() async => await fetchData;

  void add({required String name, required String description}) => addData({
        _Key.name.name: name,
        _Key.description.name: description,
      });

  void edit(
      {String? name, String? description, required NewsCategory category}) {
    final data = {
      if (name != null && name != category.name) _Key.name.name: name,
      if (description != null && category.description != category.description)
        _Key.description.name: description,
    };
    if (data.isNotEmpty) editData(data: data, id: category.id);
  }

  @override
  FutureOr<NewsCategory> objectFromDoc(
          DocumentSnapshot<Map<String, dynamic>> doc) =>
      NewsCategory(
        id: doc.id,
        name: doc[_Key.name.name],
        description: doc[_Key.description.name],
      );

  @override
  String get collectionPath => 'news_categories';
}

enum _Key { name, description }
