
import 'package:flutter/material.dart';

class TipRoute extends StatelessWidget{

  final String text;

  TipRoute({Key key, this.text}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    return Scaffold(
      
      appBar:  new AppBar(
        
        title: new Text(text),
        
      ),

      body: Padding(padding: EdgeInsets.all(18),
        child: Center(

          child: Column(

            children: <Widget>[
              
              Text(text),

              RaisedButton(onPressed: (){
                Navigator.pop(context,"我是返回值");
              },
                child: Text("返回"),

              )


              
              
            ],

          ),


        ),
      ),
      
      
      
    );
  }

}