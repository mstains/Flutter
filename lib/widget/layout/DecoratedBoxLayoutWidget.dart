import 'package:flutter/material.dart';

class DecoratedBoxLayoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("装饰容器 DecoratedBox"),
      ),
      body: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
            //渐变
              gradient:
                  LinearGradient(colors: [Colors.red, Colors.orange[700]]),
              //圆角
              borderRadius: BorderRadius.circular(3.0),
              //阴影
              boxShadow: [
                BoxShadow(
                    color: Colors.black45,
                    //阴影范围
                    offset: Offset(6, 7),
                    blurRadius: 4.0)
              ]),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
            child: Text(
              "Login",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
