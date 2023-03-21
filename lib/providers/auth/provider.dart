import 'package:firebase_auth/firebase_auth.dart';
import 'package:news_app_core/providers/users_data/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
part 'provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [UsersData])
class Auth extends _$Auth {
  final _auth = FirebaseAuth.instance;
  @override
  FutureOr<User?> build() async => _auth.currentUser;

  void _signIn(Future<UserCredential> Function() signInFunction) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final credential = await signInFunction();
      final user = credential.user;
      if (user != null) {
        ref.read(usersDataProvider.notifier).updateUserData(user);
      }
      return user;
    });
  }

  void signOut() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await _auth.signOut();
      return _auth.currentUser;
    });
  }

  void googleSignIn() => _signIn(() async {
        final googleUser = await GoogleSignIn().signIn();
        final googleAuth = await googleUser?.authentication;
        final oAuthcredential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken,
          idToken: googleAuth?.idToken,
        );
        return await _auth.signInWithCredential(oAuthcredential);
      });
}
