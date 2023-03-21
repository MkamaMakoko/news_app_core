import 'package:firebase_auth/firebase_auth.dart';
import 'package:news_app_core/objects/user_data/user_data.dart';
import 'package:news_app_core/providers/auth/provider.dart';
import 'package:news_app_core/utils/data_provider_mixin.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
part 'providers.g.dart';

@Riverpod(dependencies: [Auth, userData])
FutureOr<UserData?> currentUserData(CurrentUserDataRef ref) async {
  final user = await ref.watch(authProvider.future);
  if (user == null) return null;
  return await ref.watch(userDataProvider(id: user.uid).future);
}

@Riverpod(dependencies: [UsersData])
FutureOr<UserData> userData(UserDataRef ref, {required String id}) async =>
    await ref.watch(usersDataProvider.selectAsync(
        (data) => data.singleWhere((element) => element.id == id)));

@riverpod
class UsersData extends _$UsersData with DataProviderMixin<UserData> {
  @override
  FutureOr<List<UserData>> build() async => await fetchData;

  void banUser(UserData userData) => editData(data: {
        _Key.banned.name: !userData.banned,
        if (userData.admin) _Key.admin.name: false,
      }, id: userData.id);

  void makeUserAdmin(UserData userData) =>
      editData(data: {_Key.admin.name: !userData.admin}, id: userData.id);

  void updateUserData(User user) => state.whenData((data) {
        final userData = data.where((element) => element.id == user.uid);
        if (userData.isNotEmpty) {
          final value = userData.first;
          if (value.displayName != user.displayName ||
              value.photoUrl != user.photoURL) {
            editData(data: {
              _Key.displayName.name: user.displayName,
              _Key.photoUrl.name: user.photoURL
            }, id: value.id);
          }
        } else {
          addData({
            _Key.admin.name: false,
            _Key.banned.name: false,
            _Key.displayName.name: user.displayName,
            _Key.photoUrl.name: user.photoURL
          }, path: user.uid);
        }
      });

  @override
  FutureOr<UserData> objectFromDoc(
          DocumentSnapshot<Map<String, dynamic>> doc) =>
      UserData(
        id: doc.id,
        displayName: doc[_Key.displayName.name],
        photoUrl: doc[_Key.photoUrl.name],
        admin: doc[_Key.admin.name],
        banned: doc[_Key.banned.name],
      );

  @override
  String get collectionPath => 'users';
}

enum _Key { displayName, photoUrl, admin, banned }
