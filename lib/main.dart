import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_app/pages/home.dart';
import 'package:learn_app/pages/login_page.dart';
import 'package:learn_app/utlts/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        //primaryTextTheme: GoogleFonts.latoTextTheme(),
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      
      //home: HomaPage(),
      //initialRoute: '/',

      initialRoute: MyRoutes.homeRoute,

      routes: {
        '/' : (context) => LoginPage(),
        MyRoutes.homeRoute : (context) => HomaPage(),
        MyRoutes.loginRoute : (context) => LoginPage(),
      },
    );
  }
}

