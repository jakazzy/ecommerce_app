import 'package:ecommerce/constants.dart';
import 'package:ecommerce/models/Product.dart';
import 'package:ecommerce/screens/details_screen/components/product_images.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {

  Body({ @required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    return ProductImages(product: product);
  }
}

