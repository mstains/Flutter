import 'package:flutter/material.dart';

class ReviewInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("输入框"),
      ),
      body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: TextField(
                  //自动获取焦点
                  autofocus: true,
                  maxLines: 1,
                  //输入类型
                  keyboardType: TextInputType.text,
                  //装饰
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.cyan),
                    hintText: "请输入用户名",
                    hintStyle: TextStyle(fontSize: 14, color: Colors.red),
                    //没有下划线
                    //border: InputBorder.none
                  ),
                  //输入文字的样式
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: TextField(
                  maxLines: 1,
                  keyboardType: TextInputType.text,
                  //输入字符是否加密
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "密码",
                      labelStyle: TextStyle(color: Colors.red),
                      hintText: "请输入密码",
                      hintStyle: TextStyle(fontSize: 14, color: Colors.red)),
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Text("FormField"),
                    Form(
                        child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: "请输入登录账号",
                            hintStyle: TextStyle(color: Colors.orange,fontSize: 14),
                          ),
                        ),
                        TextField(),
                      ],
                    ))
                  ],
                ),
              )
            ],
          )),
    );
  }
}
