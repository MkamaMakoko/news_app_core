// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentUserDataHash() => r'17220487a2ba7dfc326c1265a1e458146e924c3f';

/// See also [currentUserData].
@ProviderFor(currentUserData)
final currentUserDataProvider = AutoDisposeFutureProvider<UserData?>.internal(
  currentUserData,
  name: r'currentUserDataProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentUserDataHash,
  dependencies: <ProviderOrFamily>[authProvider, userDataProvider],
  allTransitiveDependencies: <ProviderOrFamily>[
    authProvider,
    userDataProvider,
    usersDataProvider
  ],
);

typedef CurrentUserDataRef = AutoDisposeFutureProviderRef<UserData?>;
String _$userDataHash() => r'485a81a063400abbd435d3140206f972e674f346';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef UserDataRef = AutoDisposeFutureProviderRef<UserData>;

/// See also [userData].
@ProviderFor(userData)
const userDataProvider = UserDataFamily();

/// See also [userData].
class UserDataFamily extends Family<AsyncValue<UserData>> {
  /// See also [userData].
  const UserDataFamily();

  /// See also [userData].
  UserDataProvider call({
    required String id,
  }) {
    return UserDataProvider(
      id: id,
    );
  }

  @override
  UserDataProvider getProviderOverride(
    covariant UserDataProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    usersDataProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>[usersDataProvider];

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'userDataProvider';
}

/// See also [userData].
class UserDataProvider extends AutoDisposeFutureProvider<UserData> {
  /// See also [userData].
  UserDataProvider({
    required this.id,
  }) : super.internal(
          (ref) => userData(
            ref,
            id: id,
          ),
          from: userDataProvider,
          name: r'userDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userDataHash,
          dependencies: UserDataFamily._dependencies,
          allTransitiveDependencies: UserDataFamily._allTransitiveDependencies,
        );

  final String id;

  @override
  bool operator ==(Object other) {
    return other is UserDataProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$usersDataHash() => r'8220d87c4110f55cb976518e6143f7f0d70639fc';

/// See also [UsersData].
@ProviderFor(UsersData)
final usersDataProvider =
    AutoDisposeAsyncNotifierProvider<UsersData, List<UserData>>.internal(
  UsersData.new,
  name: r'usersDataProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$usersDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UsersData = AutoDisposeAsyncNotifier<List<UserData>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
