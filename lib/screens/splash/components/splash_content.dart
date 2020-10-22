import 'package:flutter/material.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/size_config.dart';

class SplashContent extends StatelessWidget {

  final String text, image;
  const SplashContent({
    Key key,
    this.text,
    this.image
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text("TOKOTO",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
            text,
            textAlign: TextAlign.center),
        Spacer( flex:  2,),
        Image.asset(
          image,
          height: getProportionateScreenHeight(264),
          width: getProportionateScreenWidth(235),
        )
      ],
    );
  }
}
