import 'package:ecommerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Don't have an account? ",
            style:  TextStyle(fontSize: getProportionateScreenWidth(16))),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text("Sign Up",
            style:  TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor
            ),
          ),
        )
      ],
    );
  }
}