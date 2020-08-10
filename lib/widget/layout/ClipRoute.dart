import 'package:flutter/material.dart';

class ClipRoute extends StatelessWidget {
  Widget _widget = Image.asset(
    "assets/image/user_photo.png",
    width: 80,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("裁剪"),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          color: Colors.grey,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: _widget,
              ),
              //剪切成圆角
              ClipOval(
                child: _widget,
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                //剪切成圆角正方形
                child: ClipRRect(
                  child: _widget,
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    //宽度设为原来宽度一半，另一半会溢出
                    widthFactor: .5,
                    child: _widget,
                  ),
                  Text(
                    "你好世界",
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //溢出部分剪裁
                    ClipRect(
                      child: Align(
                        child: _widget,
                        alignment: Alignment.topLeft,
                        widthFactor: .5,
                      ),
                    ),
                    Text(
                      "你好世界",
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.red),
                child: Text(
                  "自定义剪裁部分",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),

              Container(
                color: Colors.red,
                child: ClipRect(
                  clipper: _MyClipper(),
                  child: _widget,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _MyClipper extends CustomClipper<Rect> {
  @override
  getClip(Size size) {
    return Rect.fromLTWH(10, 10, 100, 100);
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
