import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

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
              leading: Icon(CupertinoIcons.home, color: Colors.white,),
              title: Text("Home", textScaleFactor:1.2, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),SizedBox(height: 10,),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled, color: Colors.white,),
              title: Text("Profile", textScaleFactor:1.2, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white,),
              title: Text("Mail-me", textScaleFactor:1.2, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),

          ],
        ),
      ),
    );
  }
}