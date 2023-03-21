import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:news_app_core/objects/comment/comment.dart';
import 'package:news_app_core/objects/user_data/user_data.dart';
import 'package:news_app_core/providers/users_data/providers.dart';
import 'package:news_app_core/utils/data_provider_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
class Comments extends _$Comments with DataProviderMixin<Comment> {
  late AsyncValue<UserData?> userData;
  @override
  FutureOr<List<Comment>> build(String id) async {
    userData = ref.watch(currentUserDataProvider);
    return await fetchData;
  }

  @override
  String get collectionPath => 'comments';

  @override
  CollectionReference<Map<String, dynamic>> get collectionRef =>
      super.collectionRef.doc('for_$id').collection(collectionPath);

  @override
  Query<Map<String, dynamic>>? get query =>
      collectionRef.orderBy(_Key.time.name);

  @override
  FutureOr<Comment> objectFromDoc(
          DocumentSnapshot<Map<String, dynamic>> doc) async =>
      Comment(
          id: id,
          userData: await ref
              .watch(userDataProvider(id: doc[_Key.userID.name]).future),
          time: (doc[_Key.time.name] as Timestamp).toDate(),
          comment: doc[_Key.comment.name],
          hidden: doc[_Key.hidden.name],
          pinned: doc[_Key.pinned.name],
          edited: doc[_Key.edited.name]);

  void add(String comment) => userData.whenData((user) {
        if (user != null) {
          addData({
            _Key.comment.name: comment,
            _Key.time.name: DateTime.now(),
            _Key.hidden.name: false,
            _Key.pinned.name: false,
            _Key.userID.name: user.id,
            _Key.edited.name: false,
          });
        }
      });

  void editComment({required Comment comment, required String text}) =>
      userData.whenData((value) {
        if (value != null && value.id == comment.userData.id) {
          editData(data: {
            _Key.comment.name: text,
            _Key.edited.name: true,
          }, id: comment.id);
        }
      });

  void pin(Comment comment) => _adminEdit(
      commentID: comment.id, data: {_Key.pinned.name: !comment.pinned});

  void hide(Comment comment) => _adminEdit(
      commentID: comment.id, data: {_Key.hidden.name: !comment.hidden});

  void _adminEdit(
          {required String commentID, required Map<String, Object?> data}) =>
      userData.whenData((value) {
        if (value != null && value.admin) {
          editData(data: data, id: commentID);
        }
      });
}

enum _Key { time, comment, userID, hidden, pinned, edited }
