import 'package:flutter/material.dart';

class BottomNavigationBarRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("底部导航栏"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Hello Word"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Row(
          //均分导航栏底部
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home),onPressed: (){},),
            SizedBox(),
            IconButton(icon: Icon(Icons.business),onPressed: (){}),
          ],
        ),
      ),
    );
  }
}
