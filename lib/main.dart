import 'package:flutter/material.dart';
import 'package:learn_app/pages/home.dart';
import 'package:learn_app/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      
      //home: HomaPage(),
      initialRoute: '/home',
      routes: {
        '/' : (context) => LoginPage(),
        '/home' : (context) => HomaPage(),
        'login' : (context) => LoginPage()
      },
    );
  }
}

