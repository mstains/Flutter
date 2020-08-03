import 'package:flutter/material.dart';
import 'package:flutterinit/review/ReciewProgressWidget.dart';

import 'ReviewImageIconWidget.dart';
import 'ReviewInputWidget.dart';
import 'ReviewSwitchWidget.dart';
import 'ReviewTextWidget.dart';

class ReviewHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("基础控件列表"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 8, top: 18),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return ReviewTextHomePage();
                  }));
                },
                child: Text("Text控件"),
              ),
            ),
            Container(
              child: RaisedButton(
                onPressed: () {
                Navigator.pushNamed(context, "button_route");
                },
                child: Text("Button控件"),
              ),
            ),

            Container(
              padding: EdgeInsets.only(bottom: 8, top: 8),
              child: RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReviewImageIconWidget();

                }));


              },child: Text("图片与Icon控件"),),

            ),
            Container(

              child: RaisedButton(onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReviewSwitchWidget();

                }));
              }
              
              ,child: Text("Switch和Checkbox控件"),),
              
              
            ),

            Container(
              padding: EdgeInsets.only(bottom: 8, top: 8),
              child: RaisedButton(onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context){

                  return ReviewInputWidget();

                }));

              },child: Text("输入控件"),
              ),
            ),
            Container(

              child: RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ReviewProgressWidget();
                }));

              },child: Text("进度条控件"),),

            )

          ],
        ),
      ),
    );
  }
}
