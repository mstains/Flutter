import 'package:flutter/material.dart';
import 'package:flutterinit/widget/ShareDataWidget.dart';



class _TestWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => __TestWidgetState();


}


class __TestWidgetState extends State<_TestWidget>{
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Center(

        child: Text("${ShareDataWidget.of(context).data.toString()}"),

      ),

    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("Dependencies change");
  }


}

class InheritedWidgetTestRoute extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _InheritedWidgetTestRouteState();



}

class _InheritedWidgetTestRouteState extends State<InheritedWidgetTestRoute>{
  
  int _count = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:  AppBar(

        title: Text("数据共享"),
        centerTitle: true,
      ),

      body: Center(
       
        child: ShareDataWidget(data: _count,child: Column(
          children: [
            
            _TestWidget(),
            
            RaisedButton(child: Text("点击增加数字"),onPressed: () => setState(() => ++_count),),
            
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),

              
            )
            
          ],
          
        ),),

      ),
    );
  }



}


