import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reverpod_tutorail/providers/cart-provider.dart';

class CartPage extends ConsumerWidget {
  const CartPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartProvider = ref.watch(cartNotifierProvider);
    int total = ref.watch(totalPriceProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          Expanded(
            child: ListView.builder(
                itemCount: cartProvider.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(cartProvider.elementAt(index).name),
                    trailing: IconButton(
                        onPressed: () {
                          ref.read(cartNotifierProvider.notifier).remove(
                                cartProvider.elementAt(index),
                              );
                        },
                        icon: const Icon(Icons.delete)), // add the clear button
                  );
                }),
          ),
          Text("Total Price = \$$total"),
        ]),
      ),
    );
  }
}
