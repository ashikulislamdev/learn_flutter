import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_app/utlts/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  moveToLogin(BuildContext context) async {
    Navigator.pushNamed(context, MyRoutes.loginRoute); 
  }

  /* moveToHome(BuildContext context) async {
    Navigator.pushNamed(context, MyRoutes.homeRoute); 
  } */

  moveShowClassFile(BuildContext context) async {
    Navigator.pushNamed(context, MyRoutes.classShowFile);
  }

  moveToMailMe(BuildContext context) async {
    Navigator.pushNamed(context, MyRoutes.mailmeRoute);
  }

  moveToCalculator(BuildContext context) async {
    Navigator.pushNamed(context, MyRoutes.calculateRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                //margin: EdgeInsets.zero,
                accountName: Text("White One"), 
                accountEmail: Text("whiteone@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/web-dev.png"),
                ),
              ),
            ),
            ListTile(
              onTap: () => moveShowClassFile(context),
              leading: Icon(CupertinoIcons.today, color: Colors.white,),
              title: Text("Today's", textScaleFactor:1.2, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
            Divider(thickness: 1, indent: 16, color: Colors.white,),
            ListTile(
              onTap: () => moveToCalculator(context),
              leading: Icon(Icons.calculate, color: Colors.white,),
              title: Text("Calculator", textScaleFactor:1.2, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
            Divider(thickness: 1, indent: 16, color: Colors.white,),
            ListTile(
              onTap: () => moveToMailMe(context),
              leading: Icon(CupertinoIcons.mail, color: Colors.white,),
              title: Text("Mail-me", textScaleFactor:1.2, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
            Divider(thickness: 1, indent: 16, color: Colors.white,),
            ListTile(
              onTap: () => moveToLogin(context),
              leading: Icon(CupertinoIcons.lock, color: Colors.white,),
              title: Text("Log-in", textScaleFactor:1.2, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),

          ],
        ),
      ),
    );
  }
}