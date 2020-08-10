import 'package:flutter/material.dart';

class WrapLayoutWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:  AppBar(
        title: Text("流式布局Wrap和Flow"),

      ),

      body: Container(


        child: Wrap(
          //排列方式，水平or垂直
          direction: Axis.horizontal,
          //主轴之间的间距
          spacing: 6,
          //纵轴之间的间距
          runSpacing: 6,
          //主轴方向的对齐方式
          alignment: WrapAlignment.end,
          //纵轴方向的对齐方式
          runAlignment: WrapAlignment.center,

          children: <Widget>[

            Chip(label: Text("TIM"),avatar: CircleAvatar(backgroundColor: Colors.blue,child: Text("A"),),),

            Chip(label: Text("微"),avatar: CircleAvatar(backgroundColor: Colors.blue,child: Text("B"),),),

            Chip(label: Text("QQ"),avatar: CircleAvatar(backgroundColor: Colors.blue,child: Text("C"),),),

            Chip(label: Text("支宝"),avatar: CircleAvatar(backgroundColor: Colors.blue,child: Text("C"),),),

            Chip(label: Text("天猫"),avatar: CircleAvatar(backgroundColor: Colors.blue,child: Text("C"),),),


          ],


        ),

      ),


    );
  }



}