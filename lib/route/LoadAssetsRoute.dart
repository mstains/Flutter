import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

//加载assets资源
class LoadAssetsRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(
          title: Text("加载assets资源"),

        ),

        body: LoadAssetsWidget(),


      ),


    );
  }




}


class LoadAssetsWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

   return _LoadAssetsState();
  }


}


class _LoadAssetsState extends State<LoadAssetsWidget>{

  var _jsonStr  ="";

  dynamic result;

  Future<String> _loadAsset() async{
    return await rootBundle.loadString('assets/config.txt');
  }

  void _loadAssests() async{
    result = await _loadAsset();
    print("result = ${result}");
    setState(() {
      _jsonStr = result.toString();
    });
  }

  @override
  void initState() {
    _loadAssests();
  }




  @override
  Widget build(BuildContext context) {


    return Center(

      child: Column(
        children: <Widget>[

          Image.asset("assets/image/jj.jpg"),

          Text("assets资源文件"),

          Text(_jsonStr),


        ],

      ),



    );

  }


}