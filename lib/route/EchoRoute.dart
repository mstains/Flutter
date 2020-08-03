import 'package:flutter/material.dart';


//静态路由传递界面
class EchoRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    var args = ModalRoute.of(context).settings.arguments;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(args),
      ),
      
      body: Center(
        
        child: Text(args,style: TextStyle(color: Colors.red,fontSize: 18),),
        
      ),
      
    );

  }


}