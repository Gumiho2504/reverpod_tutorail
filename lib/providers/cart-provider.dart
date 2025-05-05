import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reverpod_tutorail/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cart-provider.g.dart';

@riverpod
class CartNotifier extends _$CartNotifier {
  // initail value
  @override
  Set<Product> build() {
    return {};
  }

  // method to update state
  void add(Product product) {
    if (!state.contains(product)) {
      state.add(product);
      state = {...state, product};
    }
  }

  void remove(Product product) {
    if (state.contains(product)) {
      state = {...state}..remove(product);
    }
  }
}

@riverpod
int totalPrice(ref) {
  final cartProducts = ref.watch(cartNotifierProvider);
  int total = 0;
  for (Product product in cartProducts) {
    total += product.price;
  }
  return total;
}

// this for do not use riverpod generate

// class CartNotifier extends Notifier<Set<Product>> {
//   // initail value
//   @override
//   Set<Product> build() {
//     return {};
//   }

//   // method to update state
//   void add(Product product) {
//     if (!state.contains(product)) {
//       state.add(product);
//       state = {...state, product};
//     }
//   }

//   void remove(Product product) {
//     if (state.contains(product)) {
//       state = {...state}..remove(product);
//     }
//   }
// }

// final cartNotifierProvider =
//     NotifierProvider<CartNotifier, Set<Product>>(() => CartNotifier());
