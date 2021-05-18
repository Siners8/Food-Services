/*
* Author:Kapil-Soni
*/
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_service/home_menu/home_page.dart';
import 'package:food_service/source/color_assets.dart';
import 'package:food_service/source/common_widgets.dart';
import 'package:food_service/source/image_assets.dart';
import 'package:food_service/source/screen_util.dart';
import 'package:food_service/source/string_assets.dart';

class FoodOrder extends StatefulWidget {
  @override
  _FoodOrderState createState() => _FoodOrderState();
}

class _FoodOrderState extends State<FoodOrder> {
  @override
  Widget build(BuildContext context) {
    Constant.setScreenAwareConstant(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ///AppBar
          Row(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pop();
                },
                child: Container(
                  margin: EdgeInsets.only(
                      left: Constant.size20, top: Constant.size50),
                  width: Constant.size50,
                  height: Constant.size50,
                  child: Image.asset(ImageAssets.backButtonIcon),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                      left: Constant.size100, top: Constant.size50),
                  child: Text(
                    StringAssets.order,
                    style: TextStyle(
                        fontSize: FontSize.s18, fontWeight: FontWeight.bold),
                  )),
            ],
          ),

          ///CartIcon
          Center(
            child: SvgPicture.asset(ImageAssets.cartIcon),
          ),

          ///No Orders Yet
          Center(
            child: Text(
              StringAssets.noOrdersNow,
              style: TextStyle(
                  fontSize: FontSize.s22, fontWeight: FontWeight.bold),
            ),
          ),
          GestureDetector(
            onTap: (){

              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },
            child: Container(
                margin: EdgeInsets.all(Constant.size28),
                child: CommonWidgets().button(StringAssets.orderNow)),
          ),
        ],
      ),
    );
  }
}
