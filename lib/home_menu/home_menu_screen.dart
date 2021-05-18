import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_service/constant/data_json.dart';
import 'package:food_service/delivery/dart/delivery.dart';
import 'package:food_service/food_details/food_detail.dart';
import 'package:food_service/food_details/restaurant_details.dart';
import 'package:food_service/food_order/food_order.dart';
import 'package:food_service/home_menu/home_page.dart';
import 'package:food_service/sign_up/sign_up.dart';
import 'package:food_service/source/color_assets.dart';
import 'package:food_service/source/common_widgets.dart';
import 'package:food_service/source/image_assets.dart';
import 'package:food_service/source/screen_util.dart';
import 'package:food_service/source/string_assets.dart';
import 'package:line_icons/line_icons.dart';

class HomeMenu extends StatefulWidget {
  @override
  _HomeMenuState createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<double> _menuScaleAnimation;
  Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
    _menuScaleAnimation = Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0)).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    Constant.setScreenAwareConstant(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              icon: SvgPicture.asset("assets/images/burger_icon.svg"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SideDrawer()));
              }),
          actions: <Widget>[
            IconButton(icon: SvgPicture.asset("assets/images/search_icon.svg"), onPressed: () {}),
            IconButton(icon: SvgPicture.asset("assets/images/filter_icon.svg"), onPressed: () {}),
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
                  style: TextStyle(fontSize: FontSize.s24, fontWeight: FontWeight.bold),
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
                  style: TextStyle(fontSize: FontSize.s24, fontWeight: FontWeight.bold),
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
                    child: SvgPicture.asset(
                      ImageAssets.searchIcon,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: Constant.size16,
                  top: Constant.size20,
                  right: Constant.size24,
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Restaurant For You",
                  style: TextStyle(fontSize: FontSize.s24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),

              ///SelectorOfItem
              Expanded(
                  child: ListView.builder(
                itemBuilder: (BuildContext context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RestaurantDetail(price:restaurantData[index]["RATING"] ,name: restaurantData[index]["RESTAURANT"],images: [  restaurantData[index]["IMAGE"], restaurantData[index]["IMAGE"], restaurantData[index]["IMAGE"]],description: restaurantData[index]["LOCATION"],)));
                    },
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            margin: EdgeInsets.all(20),
                            width: MediaQuery.of(context).size.width * 0.88,
                            height: 235,
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
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        left: Constant.size16,
                                        top: Constant.size180,
                                        right: Constant.size24,
                                      ),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        restaurantData[index]["RESTAURANT"],
                                        style: TextStyle(fontSize: FontSize.s20, fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                        left: Constant.size16,
                                        top: Constant.size180,
                                        right: Constant.size24,
                                      ),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        restaurantData[index]["RATING"],
                                        style: TextStyle(fontSize: FontSize.s20, fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                    left: Constant.size16,
                                    // top: Constant.size140,
                                    right: Constant.size24,
                                  ),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                   restaurantData[index]["LOCATION"],
                                    style: TextStyle(fontSize: FontSize.s14, fontWeight: FontWeight.bold,color: ColorAssets.themeColorBlack.withOpacity(0.8)),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            child: Image.network(
                              restaurantData[index]["IMAGE"],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: restaurantData.length,
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget menu(context) {
    return SlideTransition(
      position: _slideAnimation,
      child: ScaleTransition(
        scale: _menuScaleAnimation,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Dashboard", style: TextStyle(color: Colors.white, fontSize: 22)),
                SizedBox(height: 10),
                Text("Messages", style: TextStyle(color: Colors.white, fontSize: 22)),
                SizedBox(height: 10),
                Text("Utility Bills", style: TextStyle(color: Colors.white, fontSize: 22)),
                SizedBox(height: 10),
                Text("Funds Transfer", style: TextStyle(color: Colors.white, fontSize: 22)),
                SizedBox(height: 10),
                Text("Branches", style: TextStyle(color: Colors.white, fontSize: 22)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget dashboard(context) {
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : 0.6 * screenWidth,
      right: isCollapsed ? 0 : -0.2 * screenWidth,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Material(
          animationDuration: duration,
          borderRadius: BorderRadius.all(Radius.circular(40)),
          elevation: 8,
          color: ColorAssets.themeColorOrange,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: ClampingScrollPhysics(),
            child: Container(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        child: Icon(Icons.menu, color: Colors.white),
                        onTap: () {
                          setState(() {
                            if (isCollapsed)
                              _controller.forward();
                            else
                              _controller.reverse();

                            isCollapsed = !isCollapsed;
                          });
                        },
                      ),
                      Text("My Cards", style: TextStyle(fontSize: 24, color: Colors.white)),
                      Icon(Icons.settings, color: Colors.white),
                    ],
                  ),
                  SizedBox(height: 50),
                  Container(
                    height: 200,
                    child: PageView(
                      controller: PageController(viewportFraction: 0.8),
                      scrollDirection: Axis.horizontal,
                      pageSnapping: true,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          color: Colors.redAccent,
                          width: 100,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          color: Colors.blueAccent,
                          width: 100,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          color: Colors.greenAccent,
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Transactions",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text("Macbook"),
                          subtitle: Text("Apple"),
                          trailing: Text("-2900"),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(height: 16);
                      },
                      itemCount: 10)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Row(
              children: [
                Center(
                  child: Icon(
                    Icons.person,
                    size: Constant.size80,
                    color: ColorAssets.themeColorWhite,
                  ),
                ),
                SizedBox(
                  width: Constant.size10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName.isEmpty?'Person name':userName,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: FontSize.s24),
                    ),
                    Text(
                      userEmail.isEmpty?'firstnamelastname@gmail.com':userEmail,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: FontSize.s16),
                    ),
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: ColorAssets.themeColorOrange,
            ),
          ),
          ListTile(
            leading: Icon(LineIcons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          GestureDetector(
            onTap: (){
             cartList.isEmpty? Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FoodOrder())):Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DeliveryDetails()));
            },
            child: ListTile(
              leading: Icon(LineIcons.shoppingCart),
              title: Text('Cart:${cartList.length}'),
            ),
          ),
          ListTile(
            leading: Icon(LineIcons.alternateTicket),
            title: Text('Coupen'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUp()));
            },
            child: ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () => {Navigator.of(context).pop()},
            ),
          ),
        ],
      ),
    );
  }
}
