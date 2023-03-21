// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$onlineAssetHash() => r'15a3f04d4fd2e3c05ed4d4e89e2127bacf565f48';

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

typedef OnlineAssetRef = AutoDisposeFutureProviderRef<OnlineAsset>;

/// See also [onlineAsset].
@ProviderFor(onlineAsset)
const onlineAssetProvider = OnlineAssetFamily();

/// See also [onlineAsset].
class OnlineAssetFamily extends Family<AsyncValue<OnlineAsset>> {
  /// See also [onlineAsset].
  const OnlineAssetFamily();

  /// See also [onlineAsset].
  OnlineAssetProvider call({
    required String id,
  }) {
    return OnlineAssetProvider(
      id: id,
    );
  }

  @override
  OnlineAssetProvider getProviderOverride(
    covariant OnlineAssetProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    onlineAssetsProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>[onlineAssetsProvider];

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'onlineAssetProvider';
}

/// See also [onlineAsset].
class OnlineAssetProvider extends AutoDisposeFutureProvider<OnlineAsset> {
  /// See also [onlineAsset].
  OnlineAssetProvider({
    required this.id,
  }) : super.internal(
          (ref) => onlineAsset(
            ref,
            id: id,
          ),
          from: onlineAssetProvider,
          name: r'onlineAssetProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$onlineAssetHash,
          dependencies: OnlineAssetFamily._dependencies,
          allTransitiveDependencies:
              OnlineAssetFamily._allTransitiveDependencies,
        );

  final String id;

  @override
  bool operator ==(Object other) {
    return other is OnlineAssetProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$onlineAssetsHash() => r'6cd8f836dc2bd18e684b5d82c235581eb65eca0a';

/// See also [OnlineAssets].
@ProviderFor(OnlineAssets)
final onlineAssetsProvider =
    AutoDisposeAsyncNotifierProvider<OnlineAssets, List<OnlineAsset>>.internal(
  OnlineAssets.new,
  name: r'onlineAssetsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$onlineAssetsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$OnlineAssets = AutoDisposeAsyncNotifier<List<OnlineAsset>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
