import 'package:flutter/material.dart';
import 'screen_util.dart';
import 'color_assets.dart';

class CommonWidgets {
  Widget button(String message) {
    return Container(
      width: Constant.size320,
      height: Constant.size72,
      decoration: BoxDecoration(
        color: ColorAssets.themeColorOrange,
        borderRadius: BorderRadius.all(Radius.circular(Constant.size32)),
      ),
      child: Center(
        child: Text(
          message,
          style: TextStyle(fontSize: FontSize.s18,color:ColorAssets.themeColorWhite ),
        ),
      ),
    );
  }
}
