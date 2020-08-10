import 'package:flutter/material.dart';

class AppBarRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) => _AppBarRouteWidget();
  
}


class _AppBarRouteWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _AppBarState();
  
}


class _AppBarState extends State<_AppBarRouteWidget>{
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      
      appBar: AppBar(
        //替换返回键图标
        leading: IconButton(icon: Image.asset("assets/image/left_back_icon.png",width: 25,height: 25,), onPressed: (){
          Navigator.pop(context);
        }),
        title: Text("AppBar"),
        //title文字居中显示
        centerTitle: true,
        //状态栏背景+导航栏背景，默认主题色
        //backgroundColor: Colors.red,
        //右边控件
        actions: <Widget>[
         Container(
           //距离右边25
           margin: EdgeInsets.only(right: 25),
           child:  Icon(Icons.share),
         )
          
        ],
        
      ),
      
      
    );
  }
  
  
}