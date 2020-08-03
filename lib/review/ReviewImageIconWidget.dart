import 'package:flutter/material.dart';

//https://book.flutterchina.club/chapter3/img_and_icon.html
class ReviewImageIconWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(

      appBar: AppBar(

        title: Text("图片与icon控件"),

      ),

      body: Center(
        
        child: Column(
          
          children: <Widget>[
            
            Container(
              padding: EdgeInsets.all(8),
              child: Row(
                children: <Widget>[
                  Text("assets加载图片:"),
                  Image.asset("assets/image/jj.jpg",width: 230,)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Row(
                children: <Widget>[
                  Text("网络加载:"),
                  Image.network("https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1596178429&di=4ae19b6cdfa4296d7eab5e46aa8833ac&src=http://a3.att.hudong.com/14/75/01300000164186121366756803686.jpg",width: 230,fit: BoxFit.cover,)
                  
                ],
                
              ),
            ),

            
            
          ],
          
        ),



      ),


    );
  }
  
  
}