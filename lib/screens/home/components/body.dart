import 'package:ecommerce/components/product_card.dart';
import 'package:ecommerce/models/Product.dart';
import 'package:ecommerce/screens/home/components/popular_product.dart';

import 'package:ecommerce/screens/home/components/search_field.dart';
import 'package:ecommerce/screens/home/components/section_title.dart';
import 'package:ecommerce/screens/home/components/special_offer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'icon_btn_with_counter.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox( height: getProportionateScreenWidth(20)),
              HomeHeader(),
              SizedBox( height: getProportionateScreenWidth(30)),
              DiscountBanner(),
              SizedBox( height: getProportionateScreenWidth(30)),
              Categories(),
              SizedBox( height: getProportionateScreenWidth(30)),
              SpecialOffer(),
              SizedBox( height: getProportionateScreenWidth(30)),
              PopularProducts(),
              SizedBox( height: getProportionateScreenWidth(30)),

            ],
          ),
        )
    );
  }
}

