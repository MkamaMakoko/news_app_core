// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$commentsHash() => r'c73914f339277f2e8d02d6d380282a24fd331624';

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

abstract class _$Comments
    extends BuildlessAutoDisposeAsyncNotifier<List<Comment>> {
  late final String id;

  FutureOr<List<Comment>> build(
    String id,
  );
}

/// See also [Comments].
@ProviderFor(Comments)
const commentsProvider = CommentsFamily();

/// See also [Comments].
class CommentsFamily extends Family<AsyncValue<List<Comment>>> {
  /// See also [Comments].
  const CommentsFamily();

  /// See also [Comments].
  CommentsProvider call(
    String id,
  ) {
    return CommentsProvider(
      id,
    );
  }

  @override
  CommentsProvider getProviderOverride(
    covariant CommentsProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'commentsProvider';
}

/// See also [Comments].
class CommentsProvider
    extends AutoDisposeAsyncNotifierProviderImpl<Comments, List<Comment>> {
  /// See also [Comments].
  CommentsProvider(
    this.id,
  ) : super.internal(
          () => Comments()..id = id,
          from: commentsProvider,
          name: r'commentsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$commentsHash,
          dependencies: CommentsFamily._dependencies,
          allTransitiveDependencies: CommentsFamily._allTransitiveDependencies,
        );

  final String id;

  @override
  bool operator ==(Object other) {
    return other is CommentsProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<List<Comment>> runNotifierBuild(
    covariant Comments notifier,
  ) {
    return notifier.build(
      id,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
