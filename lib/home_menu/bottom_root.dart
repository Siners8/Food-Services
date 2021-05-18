import 'package:flutter/material.dart';
import 'package:food_service/home_menu/home_menu_screen.dart';
import 'package:food_service/home_menu/home_page.dart';
import 'package:food_service/source/color_assets.dart';
import 'package:line_icons/line_icons.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: getBottomBar(),
      // appBar: app,
      body: IndexedStack(
        index: activeTab,
        children: <Widget>[
         HomeMenu(
         ),
        HomePage(),
          Center(
            child: Text("Chat",style: TextStyle(
                fontSize: 35
            ),),
          ),
          Center(
            child: Text("Account",style: TextStyle(
                fontSize: 35
            ),),
          )
        ],
      ),
    );
  }
  Widget getBottomBar(){
    List activeTabs = [
      LineIcons.home,
      Icons.restaurant,
      LineIcons.comment,
      LineIcons.user
    ];
    return Container(
      decoration: BoxDecoration(
          color: ColorAssets.themeColorWhite
      ),
      width: MediaQuery.of(context).size.width,
      height: 90,
      child: Padding(
        padding: const EdgeInsets.only(top: 10,bottom: 15,left: 15,right: 15),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: ColorAssets.themeColorOrange
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(activeTabs.length, (index){
                return IconButton(icon: Icon(activeTabs[index],size: 25,color: Colors.white,), onPressed: (){
                  setState(() {
                    activeTab = index;
                  });
                });
              }),
            ),
          ),
        ),
      ),
    );
  }
}