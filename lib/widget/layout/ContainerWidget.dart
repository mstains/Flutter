import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Container控件"),
      ),
      body: Center(

        child: Container(

          width: 200,
          height: 200,
          //设置布局大小,
          //constraints: BoxConstraints.tightFor(width: 100,height: 100),

          decoration: BoxDecoration(
            color: Colors.deepOrangeAccent,
            //gradient: RadialGradient(colors: [Colors.red,Colors.orange],center: Alignment.topLeft,radius: .98),
            gradient: LinearGradient(colors: [Colors.red,Colors.orange]),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(2, 2),
                blurRadius: 4.0
              ),
            ],
            //圆形
            //shape:BoxShape.circle,
            //圆角
            borderRadius:BorderRadius.circular(5)
          ),
          transform: Matrix4.rotationZ(.2),
          alignment: Alignment.center,
          child: Text("你好呀",style: TextStyle(color: Colors.white,fontSize: 40),),
        ),

      )
    );
  }
}
