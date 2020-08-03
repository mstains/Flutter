import 'package:flutter/material.dart';
import 'package:flutterinit/widget/ProgressWidget.dart';

class FormTestRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FormTestSate();
}

class _FormTestSate extends State<FormTestRoute> {
  TextEditingController _userNameController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  GlobalKey _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("From表单提交"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Form(
            key: _globalKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _userNameController,
                  autofocus: true,
                  decoration: InputDecoration(
                      labelText: "用户名",
                      hintText: "请输入用户名",
                      prefixIcon: Icon(Icons.person)),
                  minLines: 1,
                  validator: (v) {
                    return v.trim().length > 0 ? null : "用户名不能为空";
                  },
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: "密码",
                    hintText: "请输入密码",
                    prefixIcon: Icon(Icons.lock),
                  ),
                  maxLines: 1,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  validator: (v) {
                    return v.trim().length > 5 ? null : "密码不能少于6位";
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: RaisedButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        highlightColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        onPressed: () {
                          if ((_globalKey.currentState as FormState)
                              .validate()) {
                           Navigator.push(context, MaterialPageRoute(builder: (context){
                             return ProgressWidget();
                           }));
                          }
                        },
                        child: Text(
                          "登录",
                        ),
                      ))
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
