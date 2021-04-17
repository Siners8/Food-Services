import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_service/source/color_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_service/source/color_assets.dart';
import 'package:food_service/source/screen_util.dart';

class DeliveryDetails extends StatefulWidget {
  @override
  _DeliveryDetailsState createState() => _DeliveryDetailsState();
}

class _DeliveryDetailsState extends State<DeliveryDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorAssets.themeColorWhite,
      ///AppBar
      appBar: AppBar(
        backgroundColor: ColorAssets.themeColorWhite,
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
      body: Column(
        children: [
          Text('Details',style: TextStyle(color: ColorAssets.themeColorWhite,fontSize: FontSize.s32),),
        ],
      ),
    );
  }
}
