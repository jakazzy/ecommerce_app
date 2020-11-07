import 'package:ecommerce/models/Product.dart';
import 'package:flutter/cupertino.dart';

class Cart {
  final Product product;
  final numOfItem;

  Cart({
    @required this.product,
    @required this.numOfItem});
}

List<Cart> demoCarts = [
  Cart(product: demoProducts[0], numOfItem: 2),
  Cart(product: demoProducts[1], numOfItem: 1),
  Cart(product: demoProducts[3], numOfItem: 1),
];