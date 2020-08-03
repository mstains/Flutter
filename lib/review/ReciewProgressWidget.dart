import 'package:flutter/material.dart';

class ReviewProgressWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(

     appBar:  AppBar(
       title:  Text("进度条"),
     ),

     body: Center(

         child: Column(

           children: <Widget>[

             Container(
               padding: EdgeInsets.only(top: 18,left: 10,right: 10,bottom: 8),
               child: LinearProgressIndicator(
                 value: 0.3,
                 valueColor: AlwaysStoppedAnimation(Colors.orange),
                 backgroundColor: Colors.red,
               ),

             ),
             Container(
               child:CircularProgressIndicator(
                 value: 1,
                 strokeWidth: 1,


               ),


             )


           ],



         ),





     ),


   );
  }



}