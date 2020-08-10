import 'package:flutter/material.dart';
import 'package:flutterinit/widget/layout/tab/AppBarRoute.dart';
import 'package:flutterinit/widget/layout/tab/BottomNavigationBarRoute.dart';
import 'package:flutterinit/widget/layout/tab/DrawerRoute.dart';
import 'package:flutterinit/widget/layout/tab/TabBarRoute.dart';

class ScaffoldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AppBarRoute()));
              },
              child: Text("AppBar系列"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DrawerRoute()));

              },
              child: Text("侧滑菜单栏"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TabBarRoute()));
              },
              child: Text("TabBar系列"),
            ),

            RaisedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigationBarRoute()));
            },child: Text('底部导航栏菜单'),),


          ],
        ),
      ),
    );
  }
}

