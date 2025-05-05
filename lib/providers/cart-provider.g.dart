// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart-provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$totalPriceHash() => r'bfc91d07fc58a4e289e0395ea6d4084f1d55a8e4';

/// See also [totalPrice].
@ProviderFor(totalPrice)
final totalPriceProvider = AutoDisposeProvider<int>.internal(
  totalPrice,
  name: r'totalPriceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$totalPriceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TotalPriceRef = AutoDisposeProviderRef<int>;
String _$cartNotifierHash() => r'45aa0455288f478265303758937f3416e82e8f5e';

/// See also [CartNotifier].
@ProviderFor(CartNotifier)
final cartNotifierProvider =
    AutoDisposeNotifierProvider<CartNotifier, Set<Product>>.internal(
  CartNotifier.new,
  name: r'cartNotifierProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$cartNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CartNotifier = AutoDisposeNotifier<Set<Product>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
