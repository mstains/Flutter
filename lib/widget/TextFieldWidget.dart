import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      theme: ThemeData(
        //自定义输入控件提示样式
          inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(
          color: Colors.grey,
        ),
        hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
      )),
      home: Scaffold(
        appBar: AppBar(
          title: Text("title"),
        ),
        body: TextFieldTextRoute(),
      ),
    );
  }
}

class TextFieldTextRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TextFieldTextRouteState();
}

class _TextFieldTextRouteState extends State<TextFieldTextRoute> {
  //焦点
  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();

  //焦点范围
  FocusScopeNode _focusScopeNode;

  TextEditingController _userController = new TextEditingController();

  TextEditingController _passwordController = new TextEditingController();

  @override
  void initState() {
    super.initState();
    //用户名输入监听
    _userController.addListener(() {
      print(_userController.text);
    });
    //密码输入监听
    _passwordController.addListener(() {
      print(_passwordController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          TextField(
            //controller: _userController,
            decoration: InputDecoration(
                labelText: "用户名",
                hintText: "请输入用户名",
                prefixIcon: Icon(Icons.person),
                //隐藏下划线
                border: InputBorder.none),
            keyboardType: TextInputType.text,
            maxLines: 1,
            textAlign: TextAlign.left,
            autofocus: true,
            focusNode: focusNode1,
            //监听输入内容
            onChanged: (value) {
              print("value = ${value}");
            },
          ),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
                labelText: "密码",
                hintText: "请输入密码",
                prefixIcon: Icon(Icons.lock)),
            keyboardType: TextInputType.text,
            obscureText: true,
            textAlign: TextAlign.left,
            maxLines: 1,
            focusNode: focusNode2,
            //监听输入内容
            onChanged: (value) {
              print("value = ${value}");
            },
          ),
          RaisedButton(
              onPressed: () {
                if (null == _focusScopeNode) {
                  _focusScopeNode = FocusScope.of(context);
                }

                _focusScopeNode.requestFocus(focusNode2);
              },
              child: Text("移动焦点")),
          RaisedButton(
            onPressed: () {
              focusNode1.unfocus();
              focusNode2.unfocus();
            },
            child: Text("隐藏键盘"),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey[200],width: 1.0)),
            ),
            child: TextField(
              controller: _userController,
              decoration: InputDecoration(
                hintText: "请输入用户名",
                prefixIcon: Icon(Icons.person),
                border: InputBorder.none,
              ),
              maxLines: 1,
              textAlign: TextAlign.left,
             keyboardType: TextInputType.text,

            ),
          )
        ],
      ),
    );
  }
}
