// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$newsItemsHash() => r'4e1fa0af7dbb1bb6398454010b9f4f227a9ac506';

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

abstract class _$NewsItems
    extends BuildlessAutoDisposeAsyncNotifier<List<NewsItem>> {
  late final String newsID;

  FutureOr<List<NewsItem>> build(
    String newsID,
  );
}

/// See also [NewsItems].
@ProviderFor(NewsItems)
const newsItemsProvider = NewsItemsFamily();

/// See also [NewsItems].
class NewsItemsFamily extends Family<AsyncValue<List<NewsItem>>> {
  /// See also [NewsItems].
  const NewsItemsFamily();

  /// See also [NewsItems].
  NewsItemsProvider call(
    String newsID,
  ) {
    return NewsItemsProvider(
      newsID,
    );
  }

  @override
  NewsItemsProvider getProviderOverride(
    covariant NewsItemsProvider provider,
  ) {
    return call(
      provider.newsID,
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
  String? get name => r'newsItemsProvider';
}

/// See also [NewsItems].
class NewsItemsProvider
    extends AutoDisposeAsyncNotifierProviderImpl<NewsItems, List<NewsItem>> {
  /// See also [NewsItems].
  NewsItemsProvider(
    this.newsID,
  ) : super.internal(
          () => NewsItems()..newsID = newsID,
          from: newsItemsProvider,
          name: r'newsItemsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$newsItemsHash,
          dependencies: NewsItemsFamily._dependencies,
          allTransitiveDependencies: NewsItemsFamily._allTransitiveDependencies,
        );

  final String newsID;

  @override
  bool operator ==(Object other) {
    return other is NewsItemsProvider && other.newsID == newsID;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, newsID.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<List<NewsItem>> runNotifierBuild(
    covariant NewsItems notifier,
  ) {
    return notifier.build(
      newsID,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
