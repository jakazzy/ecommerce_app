import 'package:ecommerce/components/default_button.dart';
import 'package:ecommerce/models/Product.dart';
import 'package:ecommerce/screens/details_screen/components/product_description.dart';
import 'package:ecommerce/screens/details_screen/components/product_images.dart';
import 'package:ecommerce/screens/details_screen/components/top_rounded_container.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

import 'color_dots.dart';

class Body extends StatelessWidget {

  Body({ @required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                    product: product,
                    pressOnSeeMore: (){},
                ),
                TopRoundedContainer(
                    color: Color(0xFFF6F7F9),
                    child: Column(
                      children: [
                        ColorDots(product: product),
                        TopRoundedContainer(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: SizeConfig.screenWidth * 0.15,
                                  right: SizeConfig.screenWidth * 0.15,
                                  top: getProportionateScreenWidth(15),
                                  bottom: getProportionateScreenWidth(40),
                              ),
                              child: DefaultButton(
                                text: "Add to Cart",
                                press: (){},
                              ),
                            )
                        )
                      ],
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}



