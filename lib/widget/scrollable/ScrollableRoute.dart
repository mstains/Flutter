import 'package:flutter/material.dart';

import 'CustomScrollViewTestRoute.dart';
import 'GridViewRoute.dart';
import 'InfiniteListViewRoute.dart';
import 'ListViewBuilderRoute.dart';
import 'ListViewRoute.dart';
import 'ListViewSeparatedRoute.dart';
import 'ScrollControllerTestRoute.dart';
import 'SingleChildScrollViewRoute.dart';

class ScrollableRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("滚动视图"),
      ),

      body: Center(

        child: Column(

          children: <Widget>[

            Container(

              child: RaisedButton(onPressed: (){

              },child: Text("Scrollable组件"),),
            ),

            Container(

              child: RaisedButton(onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context) => SingleChildScrollViewRoute()));


              },child: Text("SingleChildScrollView控件"),),
              
              

            ),
            
            Container(
              child: RaisedButton(onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context) => ListViewRoute()));
              },child: Text("ListView控件"),),
              
            ),
            
            Container(
              child: RaisedButton(onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context) => ListViewBuilderRoute()));

              },child: Text("ListView.builder控件"),),
              
            ),

            Container(
              child: RaisedButton(onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context) => ListViewSeparatedRoute()));


              },child: Text("ListView.separated控件，(分割线)"),),

            ),
            Container(
              child: RaisedButton(onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context) => InfiniteListViewRoute()));
              },child: Text("模拟网络加载list"),),


            ),

            Container(
              child: RaisedButton(onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context) => GridViewRoute()));


              },child: Text("GridView控件"),),

            ),
            
            Container(
              
              child: RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CustomScrollViewTestRoute()));

              },child: Text("CustomScrollView控件"),),
              
            ),
            
            Container(
              child: RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  
                  return ScrollControllerTestRoute();
                }));
              },child: Text("ScrollController"),),
              
            )


          ],

        ),


      ),
    );
  }


}