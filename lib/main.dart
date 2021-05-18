import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_service/home_menu/bottom_root.dart';
import 'package:food_service/sign_up/sign_up.dart';
import 'package:food_service/source/color_assets.dart';

import 'home_menu/home_menu_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
SystemChrome.setPreferredOrientations([
  DeviceOrientation.portraitUp,
  DeviceOrientation.portraitDown,
]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUp(),
    );
  }
}

