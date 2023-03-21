// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$newsCategoryHash() => r'bd1f5a720fb70ae18977e4f85342bc9de0d6cc93';

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

typedef NewsCategoryRef = AutoDisposeFutureProviderRef<NewsCategory>;

/// See also [newsCategory].
@ProviderFor(newsCategory)
const newsCategoryProvider = NewsCategoryFamily();

/// See also [newsCategory].
class NewsCategoryFamily extends Family<AsyncValue<NewsCategory>> {
  /// See also [newsCategory].
  const NewsCategoryFamily();

  /// See also [newsCategory].
  NewsCategoryProvider call({
    required String id,
  }) {
    return NewsCategoryProvider(
      id: id,
    );
  }

  @override
  NewsCategoryProvider getProviderOverride(
    covariant NewsCategoryProvider provider,
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
  String? get name => r'newsCategoryProvider';
}

/// See also [newsCategory].
class NewsCategoryProvider extends AutoDisposeFutureProvider<NewsCategory> {
  /// See also [newsCategory].
  NewsCategoryProvider({
    required this.id,
  }) : super.internal(
          (ref) => newsCategory(
            ref,
            id: id,
          ),
          from: newsCategoryProvider,
          name: r'newsCategoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$newsCategoryHash,
          dependencies: NewsCategoryFamily._dependencies,
          allTransitiveDependencies:
              NewsCategoryFamily._allTransitiveDependencies,
        );

  final String id;

  @override
  bool operator ==(Object other) {
    return other is NewsCategoryProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$newsCategoriesHash() => r'0830643c21e6f4ca4aac781179a716a8e430b3f7';

/// See also [NewsCategories].
@ProviderFor(NewsCategories)
final newsCategoriesProvider = AutoDisposeAsyncNotifierProvider<NewsCategories,
    List<NewsCategory>>.internal(
  NewsCategories.new,
  name: r'newsCategoriesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$newsCategoriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$NewsCategories = AutoDisposeAsyncNotifier<List<NewsCategory>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
