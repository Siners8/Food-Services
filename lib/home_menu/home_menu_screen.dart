import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_service/food_details/food_detail.dart';
import 'package:food_service/home_menu/home_page.dart';
import 'package:food_service/source/color_assets.dart';
import 'package:food_service/source/common_widgets.dart';
import 'package:food_service/source/image_assets.dart';
import 'package:food_service/source/screen_util.dart';
import 'package:food_service/source/string_assets.dart';

class HomeMenu extends StatefulWidget {
  @override
  _HomeMenuState createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  @override
  Widget build(BuildContext context) {
    Constant.setScreenAwareConstant(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(icon: SvgPicture.asset("assets/images/burger_icon.svg"), onPressed: (){

          }),
          actions: <Widget>[

            IconButton(icon: SvgPicture.asset("assets/images/search_icon.svg"), onPressed: (){

            }),
            IconButton(icon: SvgPicture.asset("assets/images/filter_icon.svg"), onPressed: (){

            }),

          ],
        ),
        backgroundColor: ColorAssets.themeColorWhite,
        body: Container(
          child: Column(
            children: [


              ///DeliciousFood Text
              Container(
                padding: EdgeInsets.only(
                  left: Constant.size16,
                  top: Constant.size20,
                  right: Constant.size24,
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  StringAssets.delicious,
                  style: TextStyle(
                      fontSize: FontSize.s24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(
                  left: Constant.size16,
                  right: Constant.size24,
                ),
                child: Text(
                  StringAssets.food,
                  style: TextStyle(
                      fontSize: FontSize.s24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),

              ///Search
              Container(
                margin: EdgeInsets.all(Constant.size40),
                width: Constant.size310,
                height: Constant.size60,
                decoration: BoxDecoration(
                  color: ColorAssets.themeColorGrey,
                  borderRadius: BorderRadius.all(Radius.circular(Constant.size24)),
                ),
                child: Container(
                  alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(Constant.size18),
                    width: Constant.size18,
                    height: Constant.size18,
                    child: SvgPicture.asset(ImageAssets.searchIcon,)),
              ),
              ///SelectorOfItem

            ],
          ),
        ),
      ),
    );
  }
}
