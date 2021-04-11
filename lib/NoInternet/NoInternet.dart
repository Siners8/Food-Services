/*
 * Author:Rinkle-Agarwal
 */

import 'package:flutter/material.dart';
import 'package:food_service/source/image_assets.dart';
import 'package:food_service/source/screen_util.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_service/source/string_assets.dart';
import 'package:food_service/source/common_widgets.dart';

class NoInternet extends StatefulWidget {
  @override
  _NoInternetState createState() => _NoInternetState();
}

class _NoInternetState extends State<NoInternet> {
  @override
  Widget build(BuildContext context) {
    Constant.setScreenAwareConstant(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ///NoInternet Logo

         Center(
           child: SvgPicture.asset(ImageAssets.nointernetIcon),
         ),

          Center(
            child: Text(
              StringAssets.noInternet,
              style: TextStyle(
                  fontSize: FontSize.s30, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(
            height: Constant.size10,
          ),

          Container(
             child: Align(
              alignment: Alignment.center,
                 child: Text(
                   StringAssets.noInternetDesc,
                   style: TextStyle(
                       fontSize: FontSize.s16),
                   textAlign: TextAlign.center,
                 )
             ),
          ),
          Container(
              margin: EdgeInsets.all(Constant.size28),
              child: CommonWidgets().button(StringAssets.tryAgain)),

        ],
      ),
    );
  }
}

