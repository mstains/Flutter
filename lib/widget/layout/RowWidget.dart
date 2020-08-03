import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("布局"),
        
      ),

      body: Column(
        //测试Row对齐方式，排除Column默认居中对齐的干扰
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("水平布局",style: TextStyle(fontSize: 33),)

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("hello word "),
              Text("I am mstains"),
            ],
          ),
          Row(
            //当mainAxisSize： MainAxisSize.min时，居中对齐无意义，当布局前宽度等于控件长度
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("hello word "),
              Text("I am mstains"),
            ],

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Text("hello word "),
              Text("I am mstains "),
            ],

          ),
          Row(
            verticalDirection: VerticalDirection.down,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("hello word ",style: TextStyle(fontSize: 30),),
              Text("I am mstains"),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("垂直布局",style: TextStyle(fontSize: 33),)
            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text("hello word"),
              Text("I am mstains"),
              Container(
                width: 120,
                height: 50,
                color: Colors.grey,
                child: Column(
                  //垂直布局，mainAxisAlignment为纵轴,crossAxisAlignment为主轴
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("hi "),
                    Text("Hello")
                  ],
                ),

              )

            ],

          )
        ],

      ),
    );
  }
  
  
}