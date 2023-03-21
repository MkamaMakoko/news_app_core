// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$singleNewsHash() => r'59c541679bce9485d77b8d37f38e0978a84ba04f';

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

typedef SingleNewsRef = AutoDisposeFutureProviderRef<News>;

/// See also [singleNews].
@ProviderFor(singleNews)
const singleNewsProvider = SingleNewsFamily();

/// See also [singleNews].
class SingleNewsFamily extends Family<AsyncValue<News>> {
  /// See also [singleNews].
  const SingleNewsFamily();

  /// See also [singleNews].
  SingleNewsProvider call({
    required String id,
  }) {
    return SingleNewsProvider(
      id: id,
    );
  }

  @override
  SingleNewsProvider getProviderOverride(
    covariant SingleNewsProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'singleNewsProvider';
}

/// See also [singleNews].
class SingleNewsProvider extends AutoDisposeFutureProvider<News> {
  /// See also [singleNews].
  SingleNewsProvider({
    required this.id,
  }) : super.internal(
          (ref) => singleNews(
            ref,
            id: id,
          ),
          from: singleNewsProvider,
          name: r'singleNewsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$singleNewsHash,
          dependencies: SingleNewsFamily._dependencies,
          allTransitiveDependencies:
              SingleNewsFamily._allTransitiveDependencies,
        );

  final String id;

  @override
  bool operator ==(Object other) {
    return other is SingleNewsProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$newsListHash() => r'535d60c8a199150525d024e70472852254d60cbc';

/// See also [NewsList].
@ProviderFor(NewsList)
final newsListProvider =
    AutoDisposeAsyncNotifierProvider<NewsList, List<News>>.internal(
  NewsList.new,
  name: r'newsListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$newsListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$NewsList = AutoDisposeAsyncNotifier<List<News>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
