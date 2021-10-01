import 'package:flutter/material.dart';
import 'package:learn_app/pages/home.dart';
import 'package:learn_app/pages/login_page.dart';
import 'package:learn_app/utlts/routes.dart';
import 'package:learn_app/widgets/themes.dart';

import 'class_files/class_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //themeMode: ThemeMode.dark,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.datkTheme(context),
      
      //home: classPrectice(),
      //initialRoute: '/',

      initialRoute: MyRoutes.homeRoute,

      routes: {
        '/' : (context) => LoginPage(),
        MyRoutes.classShowFile : (context) => ClassShowFile(),
        MyRoutes.homeRoute : (context) => HomaPage(),
        MyRoutes.loginRoute : (context) => LoginPage(),
      },
    );
  }
}

