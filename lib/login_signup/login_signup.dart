/*
author: Rinkle agarwal
 */

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_service/source/common_widgets.dart';
import 'package:food_service/source/image_assets.dart';
import 'package:food_service/source/screen_util.dart';
import 'package:food_service/source/string_assets.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(


      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          ///LoginIcon
          Center(
            child: Image.asset(ImageAssets.loginIcon),
          ),

          ///Login Email pwd
          Container(
            padding: EdgeInsets.only(top: 35.0,left: 20.0,right: 20.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: StringAssets.email,
                    )
                  ),
              ],
            ),
          ),

          ///Login Btn
          Container(
              margin: EdgeInsets.all(Constant.size28),
              child: CommonWidgets().button(StringAssets.loginBtn)),
        ],
      ),
    );

  }
}
