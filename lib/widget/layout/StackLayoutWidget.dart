import 'package:flutter/material.dart';

class StackLayoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("层叠布局 Stack、Positioned"),
        ),
        body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            alignment: AlignmentDirectional.center,
            //未定位的widget将填满整个Stack空间
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                child: Text(
                  "Hello Word",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                color: Colors.red,
              ),
              //属于部分定位，只定位了横轴，没有定位纵轴坐标，所以纵轴坐标依据alignment属性定位
              Positioned(
                child: Text("I am Tom"),
                left: 18,
              ),
              Positioned(
                child: Text("I am jack"),
                top: 18,
              ),
              Positioned(
                child: Text("I am Judy"),
                right: 18,
              ),
              Positioned(
                child: Text("I am boy"),
                bottom: 18,
              )
            ],
          ),
        ));
  }
}
