import 'package:e_fu/home.dart';
import 'package:e_fu/pages/e/eUpdate.dart';
import 'package:e_fu/pages/event/event.dart';
import 'package:e_fu/sign.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'myData.dart';

void main() => runApp( const MyApp());

class MyApp extends StatefulWidget {
  // final String userName;
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() => MyappState();
}

class MyappState extends State<MyApp> {
  String userName = "11136000";


   _loadUser() async {
if(userName==""){
  SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.clear();
    setState(() {
      if (prefs.containsKey(Name.userName)) {
        userName = prefs.getString(Name.userName) ?? "11136000";
      }
    });
}
  
  }

   @override
  void initState() {
    super.initState();
    _loadUser();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      builder: EasyLoading.init(),
      color: MyTheme.backgroudColor,
      home: Container(
        color: MyTheme.backgroudColor,
        child: SafeArea(
        bottom: false,
        child: userName==""?const Login():const Home(),
      )),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        Home.routeName: (_) => const Home(),
        Login.routeName: (_) => const Login(),
        Event.routeName: (_) => const Event(),
        ProfileUpdate.routeName:(_)=>const ProfileUpdate()
     
      },
    );
  }
}
