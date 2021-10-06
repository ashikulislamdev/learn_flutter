// @dart=2.9

import 'package:flutter/material.dart';
import 'package:learn_app/pages/card_page.dart';
import 'package:learn_app/pages/home.dart';
import 'package:learn_app/pages/login_page.dart';
import 'package:learn_app/utlts/routes.dart';
import 'package:learn_app/widgets/tabs.dart';
import 'package:learn_app/widgets/themes.dart';

import 'calculator/calculator.dart';
import 'class_files/form/form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      
      //home: classPrectice(),
      //initialRoute: '/',

      initialRoute: MyRoutes.mailmeRoute,

      routes: {
        '/' : (context) => LoginPage(),
        MyRoutes.classShowFile : (context) => NewForm(),
        MyRoutes.calculateRoute : (context) => MyCalculator(),
        MyRoutes.homeRoute : (context) => HomePage(),
        MyRoutes.loginRoute : (context) => LoginPage(),
        MyRoutes.mailmeRoute : (context) => TabsBar(),
        MyRoutes.cardRoute : (context) => CardPage(),
      },
    );
  }
}

