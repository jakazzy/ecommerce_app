import 'package:ecommerce/components/product_card.dart';
import 'package:ecommerce/models/Product.dart';
import 'package:ecommerce/screens/details_screen/details_Screen.dart';
import 'package:ecommerce/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Popular Product", press: (){}),
        ),
        SizedBox( height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                  demoProducts.length,
                      (index) {
                    if(demoProducts[index].isPopular)
                       return ProductCard(
                           product: demoProducts[index],
                           press: () => Navigator.pushNamed(
                               context,
                               DetailsScreen.routeName,
                               arguments: ProductDetailsArguments(
                                   product: demoProducts[index])),
                       );
                    return SizedBox.shrink();
                      }),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}

