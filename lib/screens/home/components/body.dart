import 'package:ecommerce/screens/home/components/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
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
            ],
          ),
        )
    );
  }
}

