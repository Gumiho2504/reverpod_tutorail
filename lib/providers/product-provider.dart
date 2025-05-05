import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reverpod_tutorail/models/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product-provider.g.dart';

List<Product> allProducts = [
  Product(
      id: 1,
      name: 'Laptop',
      category: 'Electronics',
      price: 100,
      image:
          'https://www.lenovo.com/medias/lenovo-laptop.jpg?context=bWFzdGVyfGltYWdlc3w1Nzg0N3xpbWFnZS9qcGVnfGltYWdlcy9oYzYvaDE5LzEwMjg2NjE5NzYyNzQzL2xlbm92by1sYXB0b3BhdC5qcGd8Y2ZkOTMwZjQyOTI4YjViZDRhOGJmN2JlNzU2NTkzNzM0MGYxMDE'),
  Product(
      id: 2,
      name: 'Smartphone',
      category: 'Electronics',
      price: 500,
      image:
          'https://www.samsung.com/etc/designs/samsung/images/galaxy-s23-feature-banner.jpg'),
  Product(
      id: 3,
      name: 'Headphones',
      category: 'Electronics',
      price: 150,
      image: 'https://images.unsplash.com/photo-1571085920020-c3bb1eaa02b8'),
  Product(
      id: 4,
      name: 'Smartwatch',
      category: 'Electronics',
      price: 200,
      image: 'https://images.unsplash.com/photo-1597237440715-3c604d5c9c0e'),
  Product(
      id: 5,
      name: 'Tablet',
      category: 'Electronics',
      price: 300,
      image:
          'https://cdn.pixabay.com/photo/2016/12/13/22/17/tablet-1902742_960_720.jpg'),
  Product(
      id: 6,
      name: 'TV',
      category: 'Electronics',
      price: 800,
      image: 'https://images.unsplash.com/photo-1569912478-9a338ea7a0f2'),
  Product(
      id: 7,
      name: 'Refrigerator',
      category: 'Home Appliances',
      price: 1000,
      image:
          'https://www.whirlpool.com/content/dam/global/whirlpool/whirlpool/us/product-image-library/refrigerator.jpg'),
  Product(
      id: 8,
      name: 'Washing Machine',
      category: 'Home Appliances',
      price: 600,
      image:
          'https://media.istockphoto.com/photos/washing-machine-in-laundry-room-picture-id1139984852'),
  Product(
      id: 9,
      name: 'Microwave',
      category: 'Home Appliances',
      price: 120,
      image: 'https://images.unsplash.com/photo-1584206250559-b1a5a50b7b83'),
  Product(
      id: 10,
      name: 'Coffee Maker',
      category: 'Home Appliances',
      price: 80,
      image: 'https://images.unsplash.com/photo-1591843273772-51b3b38873a1'),
  Product(
      id: 11,
      name: 'Blender',
      category: 'Home Appliances',
      price: 60,
      image: 'https://images.unsplash.com/photo-1581579474179-f2c6ea2a1b45'),
  Product(
      id: 12,
      name: 'Air Conditioner',
      category: 'Home Appliances',
      price: 500,
      image:
          'https://www.airconditionerpro.com/wp-content/uploads/2021/11/air-conditioner.jpg'),
];

int count = 0;

final countProvider = StateProvider<int>((ref) => 0);
//final productProvider = Provider((ref) => allProducts);

// final reductProvider = Provider((ref) {
//   return allProducts.where((p) => p.price < 200).toList();
// });

@riverpod
List<Product> products(ref) {
  return allProducts;
}
