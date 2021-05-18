import 'package:flutter/material.dart';
import 'package:food_service/delivery/dart/delivery.dart';
import 'package:food_service/widget/product_slider.dart';
import 'package:food_service/source/color_assets.dart';
import 'dart:math' as math;

import 'package:line_icons/line_icons.dart';
class Cart {
String name;
int amount;
String image;
Cart({this.name,this.amount,this.image});
}
List<Cart> cartList=List();
class ProductDetailPage extends StatefulWidget {
  final List<String> images;
  final String name;
  final String price;
  final String description;

  const ProductDetailPage({Key key, this.images, this.name, this.price, this.description}) : super(key: key);
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int totalItem=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              ProductSlider(
                items: widget.images,
              ),
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(LineIcons.arrowLeft),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(widget.description,style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(widget.name,style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                    ),),
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap:(){
                            setState(() {
                              totalItem!=0?totalItem--:0;
                            });
                          },
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                color: ColorAssets.themeColorBlack,
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Center(
                              child: Text("-",style: TextStyle(
                                  color: ColorAssets.themeColorWhite
                              ),),
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Text(totalItem.toString(),style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(width: 15,),
                        InkWell(
                          onTap:(){
                            setState(() {
                            totalItem++;
                            });
                          },
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                color: ColorAssets.themeColorBlack,
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Center(
                              child: Text("+",style: TextStyle(
                                  color: ColorAssets.themeColorWhite
                              ),),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],),
                SizedBox(height: 20,),
                Text("A salad is a dish consisting of pieces of food in a mixture, with at least one raw ingredient. It is often dressed, and is typically served at room temperature or chilled, though some (such as south German potato salad, or chicken salad) can be served warm",style: TextStyle(
                    height: 1.3
                ),),
                SizedBox(height: 20,),
                Row(
                  children: <Widget>[
                    Text("Delivery Time"),
                    SizedBox(width: 30,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.timer),
                        SizedBox(width: 8,),
                        Text("25 Mins",style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Total Price",style: TextStyle(
                            fontSize: 15
                        ),),
                        SizedBox(height: 10),
                        Text(widget
                            .price,style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Transform.rotate(
                          angle: - math.pi /4,
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                color: ColorAssets.themeColorOrange,
                                borderRadius: BorderRadius.circular(25)
                            ),

                          ),
                        ),

                        Positioned(
                          top: 20,
                          left: 18,
                          child: InkWell(
                            onTap: (){
                              for(int i=0;i<totalItem;i++){
                                cartList.add(Cart(name: widget.name,amount: int.parse(widget.price),image: widget.images[0]));
                              }
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DeliveryDetails()));
                            },
                            child: Container(
                              width: 35,
                              height: 35,
                              child: Stack(
                                children: <Widget>[
                                  Icon(LineIcons.shoppingCart,color: ColorAssets.themeColorWhite,size: 30,),
                                  Positioned(
                                    right: 0,
                                    child: Container(
                                      width: 18,
                                      height: 18,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.red
                                      ),
                                      child: Center(
                                        child: Text(totalItem.toString(),style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: ColorAssets.themeColorWhite
                                        ),),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),

                  ],
                ),
                SizedBox(height: 30,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
