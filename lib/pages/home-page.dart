import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reverpod_tutorail/companents/icon-bage.dart';
import 'package:reverpod_tutorail/providers/cart-provider.dart';
import 'package:reverpod_tutorail/providers/product-provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(productsProvider);
    final count = ref.watch(countProvider);
    final cartProducts = ref.watch(cartNotifierProvider);
    return Scaffold(
        appBar: AppBar(
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: Text('Hell world'),
          ),
          forceMaterialTransparency: false,
          title: const Text('Home Page'),
          actions: [
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/cart');
                },
                child: IconWithBadge())
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            Text("count = $count"),
            ElevatedButton(
                onPressed: () {
                  //print("Add");
                  ref.read(countProvider.notifier).state++;
                },
                child: Text("Add")),
            Expanded(
              child: GridView.builder(
                  physics: RangeMaintainingScrollPhysics(),
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.amber,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Image.network(products[index].image),
                            Text('${products[index].id}'),
                            Text(products[index].name),
                            Text(products[index].price.toString()),
                            cartProducts.contains(products[index])
                                ? ElevatedButton(
                                    onPressed: () {}, child: Text("Remove"))
                                : ElevatedButton(
                                    onPressed: () {
                                      ref
                                          .read(cartNotifierProvider.notifier)
                                          .add(products[index]);
                                    },
                                    child: Text("Add"))
                          ]),
                    );
                  }),
            )
          ]),
        ));
  }
}
