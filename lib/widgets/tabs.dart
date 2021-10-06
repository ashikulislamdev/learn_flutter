import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_app/widgets/drawer.dart';

class TabsBar extends StatefulWidget {
  const TabsBar({ Key? key }) : super(key: key);

  @override
  _TabsBarState createState() => _TabsBarState();
}

class _TabsBarState extends State<TabsBar> {
  List _tabs = [
    HomeTab(),
    SettingTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("White"),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            //BottomNavigationBarItem(icon: Icon(Icons.inbox), label: 'Inbox'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
          ],
        ), 
        tabBuilder: (BuildContext context, index){
          return _tabs[index];
        },
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Home Tab"),
    );
  }
}

class SettingTab extends StatelessWidget {
  const SettingTab({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Setting Tab"),
    );
  }
}