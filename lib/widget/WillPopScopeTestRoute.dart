import 'package:flutter/material.dart';

class WillPopScopeTestRoute extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _WillPopScopeTestRouteState();


}


class _WillPopScopeTestRouteState extends State<WillPopScopeTestRoute>{

  DateTime _dateTime;

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar:  AppBar(
        title: Text("返回监听"),
        
      ),

      body: WillPopScope(child: Text("1秒内连续按两次返回键退出"), onWillPop: () async{

        if(_dateTime == null || DateTime.now().difference(_dateTime) > Duration(seconds: 1)){

          _dateTime = DateTime.now();

          return false;
        }

        

        return true;
      }),

    );
  }
}