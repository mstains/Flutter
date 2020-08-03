import 'package:flutter/material.dart';

class ReViewButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Button控件"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 8, top: 18, left: 10, right: 10),
              child: FlatButton(
                onPressed: () {},
                child: Text("FlatButton--默认背景透明并不带阴影，按下后，会有背景色"),
              ),
            ),
            Container(
              child: RaisedButton(
                onPressed: () {},
                child: Text("RaisedButton--它默认带有阴影和灰色背景。按下后，阴影会变大"),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 8, top: 8, left: 10, right: 10),
              child: OutlineButton(
                onPressed: () {},
                child: Text(
                    "OutlineButton--默认有一个边框，不带阴影且背景透明。按下后，边框颜色会变亮、同时出现背景和阴影(较弱)"),
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.gps_fixed), onPressed: () {}),
                  Text("是一个可点击的Icon，不包括文字，默认没有背景，点击后会出现背景")
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.only(bottom: 8, top: 8, left: 10, right: 10),
                  child: FlatButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.send),
                      label: Text("发送")),
                ),
                Container(
                    child: RaisedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                        label: Text("添加"))),
                Container(
                    padding:
                        EdgeInsets.only(bottom: 8, top: 8, left: 10, right: 10),
                    child: OutlineButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.info),
                        label: Text("警告"))),
              ],
            ),
            Text('自定义FlatButton外观'),
            FlatButton(
              onPressed: () {},
              child: Text("设置点击后背景颜色"),
              highlightColor: Colors.orangeAccent,
            ),
            Container(
              padding: EdgeInsets.only(left: 5),
              child: FlatButton(
                onPressed: null,
                child: Text("设置禁止点击背景色和文字颜色"),
                disabledColor: Colors.orange,
                disabledTextColor: Colors.white,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Text("设置按下背景颜色"),
                    highlightColor: Colors.blue,
                    color: Colors.grey,
                    textColor: Colors.white,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 8),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text("设置按下水波纹颜色"),
                      splashColor: Colors.orange,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 8),
              child: RaisedButton(
                onPressed: () {},
                child: Text("自定义button背景，圆角，点击文字颜色等属性"),
                textColor: Colors.white,
                color: Colors.black,
                highlightColor: Colors.red,
                //禁止按下的背景颜色
                disabledColor: Colors.orangeAccent,
                //禁止按下时的文字颜色
                disabledTextColor: Colors.white,
                //阴影
                elevation: 0,
                //按下的阴影
                highlightElevation: 0,
                //禁止按下的阴影
                //disabledElevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Row(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Text("按钮"),
                    //highlightColor: Colors.blue,
                    textColor: Colors.white,
                    color: Colors.orange,
                    //按下去水波纹颜色
                    splashColor: Colors.orange,
                    //按下去背景颜色
                    highlightColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    child: OutlineButton(
                      onPressed: () {},
                      child: Text("OutlineButton"),

                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
