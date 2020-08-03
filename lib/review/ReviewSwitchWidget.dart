import 'package:flutter/material.dart';

class ReviewSwitchWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Switch"),

      ),

      body: _SwitchWidget(),


    );
  }

}


class _SwitchWidget extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _SwitchWidgetState();

}

class _SwitchWidgetState extends State<_SwitchWidget>{

  bool _switchSelectedState = false;

  bool _checkboxSelected = true;

  @override
  Widget build(BuildContext context) {

    return Center(

      child: Column(

        children: <Widget>[
          Switch(
            //开关状态
            value: _switchSelectedState,
            //开关状态回调
            onChanged: (value){

              setState(() {
                _switchSelectedState = value;
              });


          },
            //开关颜色
          activeColor: Colors.blue,
          ),

          Checkbox(value: _checkboxSelected, onChanged: (state){
           setState(() {
             _checkboxSelected = state;
           });
          },activeColor: Colors.orange,)



        ],

      ),

    );
  }

}