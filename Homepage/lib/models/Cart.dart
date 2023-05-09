import 'package:flutter/material.dart';

import 'Product.dart';

class Cart {
  final Product product;
  final int numOfItem;

  Cart({required this.product, required this.numOfItem});

  static dart() {}
}

// Demo data for our cart

List<Cart> demoCarts = [
  Cart(product: demoProducts[0], numOfItem: 0),
  Cart(product: demoProducts[1], numOfItem: 0),
  Cart(product: demoProducts[3], numOfItem: 0),
];
