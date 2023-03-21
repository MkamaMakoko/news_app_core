// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authHash() => r'301eff7846937e0dda8e6e7c6b523b07d9987c52';

/// See also [Auth].
@ProviderFor(Auth)
final authProvider = AsyncNotifierProvider<Auth, User?>.internal(
  Auth.new,
  name: r'authProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$authHash,
  dependencies: <ProviderOrFamily>[usersDataProvider],
  allTransitiveDependencies: <ProviderOrFamily>[usersDataProvider],
);

typedef _$Auth = AsyncNotifier<User?>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
