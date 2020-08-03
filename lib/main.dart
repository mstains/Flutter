import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutterinit/route/EchoRoute.dart';
import 'package:flutterinit/route/LoadAssetsRoute.dart';
import 'package:flutterinit/route/NewRoute.dart';
import 'package:flutterinit/route/StateLifeCycleRoute.dart';
import 'package:flutterinit/route/TipRoute.dart';
import 'package:flutterinit/widget/ButtonWidget.dart';
import 'package:flutterinit/widget/FormTestWidget.dart';
import 'package:flutterinit/widget/ImageWidget.dart';
import 'package:flutterinit/widget/TextFieldWidget.dart';
import 'package:flutterinit/widget/TextWidget.dart';

void main() {
  runApp(MainHomePage());
}

class MainHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "34444",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
      //路由表
      routes: {
        "new_page": (context) => NewRoute(),
        "ec_route" : (context) => EchoRoute(),
        "tip_route" : (context) => TipRoute(text: ModalRoute.of(context).settings.arguments),
        "load_assets_route" : (context) =>  LoadAssetsRoute(),
        //State的生命周期
        "state_life_cycle_route" : (context) =>StateLifeCycleRoute(),
        //图片
        "image_route" : (context) => ImageWidget(),
        
        "text_field_route" : (context) => TextFieldWidget(),

        "form_route" : (context) => FormTestRoute()


      },

    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomeState();
  }
}

class _MyHomeState extends State<StatefulWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("你好呀"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("这是个计数器"),
            Text("${_counter}"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return new NewRoute();
                        }));
                      },
                      child: Text(
                        "动态路由传递",
                        style: TextStyle(color: Colors.blue, fontSize: 14),
                      )),
                ),
                Container(
                  child: RaisedButton(
                    // 打开`TipRoute`，并等待返回结果
                      onPressed: () async {
                        var result = await Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return TipRoute(text: "传值路由");
                        }));

                        print(result);
                      },
                      child: Text(
                        "路由传值",
                        style: TextStyle(color: Colors.blue, fontSize: 14),
                      )),
                ),

                Container(
                  //通过路由表打开新页面
                  padding: EdgeInsets.all(10),
                  child: RaisedButton(onPressed: (){

                    //通过路由表注册的 new_page路由，找到新页面
                    Navigator.pushNamed(context, "new_page");

                  }, child: Text(
                    "通过路由表打开新页面",
                    style: TextStyle(color: Colors.blue, fontSize: 14),
                  )),
                ),

                //通过路由表传递参数
                Container(
                  //通过路由表传递参数
                  child: RaisedButton(onPressed: (){
                    Navigator.of(context).pushNamed("ec_route",arguments: "hello");
                  },
                    child: Text(
                      "通过路由表传递参数",
                      style: TextStyle(color: Colors.blue, fontSize: 14),
                  ),

                )
                ),
                
                //生成随机数
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text("生成随机数${WordPair.random().toString()}"),
                ),

                //跳转本地资源路由
                Container(
                  child: RaisedButton(onPressed: (){

                    Navigator.pushNamed(context, "load_assets_route");

                  },
                    child: Text("跳转本地资源页面",style: TextStyle(color: Colors.blue, fontSize: 14),
                  ),

                )

                ),

                Container(

                  padding: EdgeInsets.all(10),

                  child: RaisedButton(onPressed: (){

                    Navigator.pushNamed(context, "state_life_cycle_route");

                  },
                  child: Text("state生命周期",style: TextStyle(color: Colors.blue, fontSize: 14)),),

                ),

                Container(

                  padding: EdgeInsets.all(10),

                  child: RaisedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){

                      return TextWidget();

                    }));

                  },child: Text("Text组件"),),

                ),
                Container(

                  child: RaisedButton(onPressed: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context){

                      return ButtonWidget();

                    }));


                  },child: Text("button组件"),),


                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: RaisedButton(onPressed: (){

                    Navigator.pushNamed(context, "image_route");


                  },child: Text("图片"),),


                ),
                Container(
                  
                  child: FlatButton(onPressed: (){
                    
                    Navigator.pushNamed(context, "text_field_route");
                  }, child: Text("输入控件")),
                  
                ),
                Container(

                  padding: EdgeInsets.all(10),

                  child: RaisedButton(onPressed: (){
                    Navigator.pushNamed(context, "form_route");

                  },child: Text("Form"),),

                ),
                
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: "Increment",
        child: Icon(Icons.add),
      ),
    );
  }
}
