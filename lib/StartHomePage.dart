import 'package:flutter/material.dart';
import 'package:flutterinit/review/ReViewButtonWidget.dart';
import 'package:flutterinit/review/ReviewHomePage.dart';
import 'package:flutterinit/widget/layout/LayoutHomePage.dart';


void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

  return MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    routes: {
      //基础控件列表
      "review_route": (context) => ReviewHomePage(),
      "button_route" :(context) => ReViewButtonWidget(),
      "layout_route" : (context) => LayoutHomePage(),
    },

    home : StartHomePage(),


  );
  }


}

class StartHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("启动"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 8,top: 18),
                child: RaisedButton(

                  onPressed: () {

                Navigator.pushNamed(context, "review_route");
                  },
                  child: Text("基础控件"),
                ),
              ),
              RaisedButton(onPressed: (){

                Navigator.pushNamed(context, "layout_route");

              },child: Text("布局"),)
            ],
          ),
        ),
      );

  }
}
