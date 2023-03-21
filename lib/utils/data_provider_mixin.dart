import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

mixin DataProviderMixin<T> {
  @protected
  CollectionReference<Map<String, dynamic>> get collectionRef =>
      FirebaseFirestore.instance.collection(collectionPath);

  @protected
  String get collectionPath;

  @protected
  Query<Map<String, dynamic>>? get query => null;

  @protected
  FutureOr<T> objectFromDoc(DocumentSnapshot<Map<String, dynamic>> doc);

  @protected
  FutureOr<List<T>> get fetchData async {
    final snapshots = query?.snapshots() ?? collectionRef.snapshots();
    await for (final snapshot in snapshots) {
      return [for (final doc in snapshot.docs) await objectFromDoc(doc)];
    }
    return [];
  }

  @protected
  void addData(Map<String, Object?> data, {String? path}) =>
      _updateData(() async {
        if (path == null) {
          await collectionRef.add(data);
        } else {
          await collectionRef.doc(path).set(data);
        }
      });

  @protected
  void addMultipleData(List<Map<String, Object?>> dataList) =>
      _updateData(() async {
        for (final data in dataList) {
          await collectionRef.add(data);
        }
      });

  void addAsyncData(Future<Map<String, Object?>> Function() data,
          {String? path}) =>
      _updateData(() async {
        if (path == null) {
          await collectionRef.add(await data());
        } else {
          await collectionRef.doc(path).set(await data());
        }
      });

  @protected
  void editData({required Map<String, Object?> data, required String id}) =>
      _updateData(() async => await collectionRef.doc(id).update(data));

  void delete(String id) =>
      _updateData(() async => await collectionRef.doc(id).delete());

  @protected
  void _updateData(Future<void> Function() updateFunction) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      return await updateFunction().then((value) async => await fetchData);
    });
  }

  set state(AsyncValue<List<T>> newState);
}
