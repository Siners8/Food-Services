import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_service/food_details/food_detail.dart';
import 'package:food_service/home_menu/bottom_root.dart';
import 'package:food_service/sign_up/sign_up.dart';
import 'package:food_service/source/color_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_service/source/color_assets.dart';
import 'package:food_service/source/common_widgets.dart';
import 'package:food_service/source/screen_util.dart';
import 'package:food_service/source/string_assets.dart';

class DeliveryDetails extends StatefulWidget {
  @override
  _DeliveryDetailsState createState() => _DeliveryDetailsState();
}

class _DeliveryDetailsState extends State<DeliveryDetails> {
  CollectionReference _collectionReference = Firestore.instance.collection('orders');

  int totalAmount = 0;
  List<String> items=List();

  @override
  void initState() {
    for (int i = 0; i < cartList.length; i++) {
      setState(() {
        totalAmount = cartList[i].amount + totalAmount;
        items.add(cartList[i].name);
      });
    }
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorAssets.themeColorWhite,

      ///AppBar
      appBar: AppBar(
        backgroundColor: ColorAssets.themeColorWhite,
        elevation: 0,
        leading: IconButton(icon: SvgPicture.asset("assets/images/burger_icon.svg"), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: SvgPicture.asset("assets/images/search_icon.svg"), onPressed: () {}),
          IconButton(icon: SvgPicture.asset("assets/images/filter_icon.svg"), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Container(
            padding: EdgeInsets.only(
              left: Constant.size16,
              top: Constant.size20,
              right: Constant.size24,
            ),
            alignment: Alignment.centerLeft,
            child: Text(
              "Details of Your Cart",
              style: TextStyle(fontSize: FontSize.s24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (BuildContext context, index) {
              return Container(
                child: Container(
                  child: Row(
                    children: [
                      Image.network(
                        cartList[index].image,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Text(
                          cartList[index].name,
                          style: TextStyle(fontSize: FontSize.s18, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Text(
                          cartList[index].amount.toString(),
                          style: TextStyle(fontSize: FontSize.s18, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                margin: EdgeInsets.all(20),
                height: 92,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: ColorAssets.themeColorWhite,
                    boxShadow: [
                      BoxShadow(
                        color: ColorAssets.themeColorBlack.withOpacity(0.5),
                        spreadRadius: 2.0,
                        offset: Offset(10.0, 10.0),
                        blurRadius: 20,
                      ),
                    ]),
              );
            },
            itemCount: cartList.length,
            scrollDirection: Axis.vertical,
          )),
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    child: Text(
                      "Total Amount",
                      style: TextStyle(fontSize: FontSize.s20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    child: Text(
                      totalAmount.toString(),
                      style: TextStyle(fontSize: FontSize.s20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(

            onTap: () async {
              await _collectionReference.add({
                "Order Amount": totalAmount,
                "Customer Name": userName,
                "Customer E-mail": userEmail,
                "items": items,
              });
              cartList.clear();
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>RootApp()));
            },

            child: Container(margin: EdgeInsets.all(Constant.size28), child: CommonWidgets().button("Place Order")),
          ),
        ],
      ),
    );
  }
}
