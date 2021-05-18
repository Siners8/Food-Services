import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_service/home_menu/bottom_root.dart';
import 'package:food_service/source/color_assets.dart';
import 'package:food_service/source/image_assets.dart';
import 'package:food_service/source/screen_util.dart';
import 'package:food_service/source/common_widgets.dart';
String userName,userEmail;
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailEditorController = TextEditingController();
  TextEditingController nameEditorController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  CollectionReference _collectionReference=Firestore.instance.collection('users');
  GlobalKey<FormState> formKey = GlobalKey();
  bool valid=false;
  String password, email,name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Constant.size400,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(Constant.size28), bottomRight: Radius.circular(Constant.size28)),
                  boxShadow: [
                    BoxShadow(
                        color: ColorAssets.themeColorGrey,
                        blurRadius: Constant.size20,
                        offset: Offset(20, 10),
                        spreadRadius: Constant.size10),
                  ]),
              child: Center(
                  child: Image.asset(
                   "assets/icons/Logo.png",
                    width: Constant.size400,
                    height: Constant.size400,
                  )),
            ),
            SizedBox(
              height: Constant.size20,
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(Constant.size16),
                    padding: EdgeInsets.all(Constant.size16),
                    decoration: BoxDecoration(
                      color: ColorAssets.themeColorWhite,
                      borderRadius: BorderRadius.all(Radius.circular(Constant.size28)),
                      border: Border.all(color: ColorAssets.themeColorOrange.withOpacity(0.5), width: Constant.size3),
                    ),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {
                          name = value;
                          userName=value;
                        });
                      },
                      cursorColor: ColorAssets.themeColorOrange,
                      controller: nameEditorController,
                      autocorrect: false,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'Name',
                      ),
                    ),
                  ),
                  ///E-mail
                  Container(
                    margin: EdgeInsets.all(Constant.size16),
                    padding: EdgeInsets.all(Constant.size16),
                    decoration: BoxDecoration(
                      color: ColorAssets.themeColorWhite,
                      borderRadius: BorderRadius.all(Radius.circular(Constant.size28)),
                      border: Border.all(color: ColorAssets.themeColorOrange.withOpacity(0.5), width: Constant.size3),
                    ),
                    child: TextFormField(
                      validator: (value) {
                        bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
                        if (emailValid) {
                          setState(() {
                            valid=true;
                          });
                          return 'Valid';
                        } else {
                          setState(() {
                            valid=false;
                          });
                          return 'Not Valid E-mail';
                        }
                      },
                      onChanged: (value) {
                        setState(() {
                          email = value;
                          userEmail=value;
                        });
                      },

                      cursorColor: ColorAssets.themeColorOrange,
                      controller: emailEditorController,
                      autocorrect: false,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'Email',
                      ),
                    ),
                  ),

                  ///Password
                  Container(
                    margin: EdgeInsets.all(Constant.size16),
                    padding: EdgeInsets.all(Constant.size16),
                    decoration: BoxDecoration(
                      color: ColorAssets.themeColorWhite,
                      borderRadius: BorderRadius.all(Radius.circular(Constant.size28)),
                      border: Border.all(color: ColorAssets.themeColorOrange.withOpacity(0.5), width: Constant.size3),
                    ),
                    child: TextFormField(
                      validator: (value) {
                        if (value.isNotEmpty && value.length > 5) {
                          setState(() {
                            valid=true;
                          });
                          return 'Valid';
                        } else {
                          setState(() {
                            valid=false;
                          });
                          return 'Password should be 6 character long';
                        }
                      },
                      onChanged: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                      cursorColor: ColorAssets.themeColorOrange,
                      controller: passwordEditingController,
                      autocorrect: false,
                      obscureText: true,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(onTap: () async{
              print('$email::$password');
              await _collectionReference.add({
                "name":name,
                "email":email,
                "password":password,
                "address":"",
                "phone-number":"",
              });
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>RootApp()));
              final snackbar = new SnackBar(
                content: new Text("Email : $email, password : $password"),
              );
             // if(valid){
             //
             //
             // }
             // else{
             //
             // }
            }, child: CommonWidgets().button('Done')),
          ],
        ),
      ),
    );
  }
}
