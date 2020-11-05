import 'package:ecommerce/components/rounded_icon_btn.dart';
import 'package:ecommerce/models/Product.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/body.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName ='.details_screen';
  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments= ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(rating: arguments.product.rating),
      body: Body(product: arguments.product),
    );
  }
}


class ProductDetailsArguments{
  final Product product;

  ProductDetailsArguments({ @required this.product});
}