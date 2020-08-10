import 'package:flutter/material.dart';

class GridViewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text("GridView控件"),
        centerTitle: true,
      ),
//      body: GridView(
//        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//            crossAxisCount: 3, childAspectRatio: 1.0),
//        children: <Widget>[
//          Icon(Icons.ac_unit),
//          Icon(Icons.airport_shuttle),
//          Icon(Icons.all_inclusive),
//          Icon(Icons.beach_access),
//          Icon(Icons.cake),
//          Icon(Icons.free_breakfast)
//        ],
//      ),
//      body: GridView.count(
//        //每行显示几个
//        crossAxisCount: 4,
//        //主轴方向的间距
//        mainAxisSpacing: 4,
//        //横轴方向子元素的间距
//        crossAxisSpacing: 3,
//        //宽高比
//        childAspectRatio: 1.2,
//
//        children: <Widget>[
//          Icon(Icons.ac_unit),
//          Icon(Icons.airport_shuttle),
//          Icon(Icons.all_inclusive),
//          Icon(Icons.beach_access),
//          Icon(Icons.cake),
//          Icon(Icons.free_breakfast),
//          Icon(Icons.ac_unit),
//          Icon(Icons.airport_shuttle),
//          Icon(Icons.all_inclusive),
//          Icon(Icons.beach_access),
//          Icon(Icons.cake),
//          Icon(Icons.free_breakfast)
//
//        ],
//      ),
      //SliverGridDelegateWithFixedCrossAxisCount等宽
      // SliverGridDelegateWithMaxCrossAxisExtent 限制长度（长度比屏幕小，一行展示，长度比屏幕大，多行展示）
//    body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//      //主轴
//      maxCrossAxisExtent: 120.0,
//      childAspectRatio: 1.0
//    ),
//      children: <Widget>[
//        Icon(Icons.ac_unit),
//        Icon(Icons.airport_shuttle),
//        Icon(Icons.all_inclusive),
//        Icon(Icons.beach_access),
//        Icon(Icons.cake),
//        Icon(Icons.free_breakfast),
//      ],
//    ),
//      body: GridView.extent(
//        maxCrossAxisExtent: 140,
//        childAspectRatio: 2.0,
//        children: <Widget>[
//        Icon(Icons.ac_unit),
//        Icon(Icons.airport_shuttle),
//        Icon(Icons.all_inclusive),
//        Icon(Icons.beach_access),
//        Icon(Icons.cake),
//        Icon(Icons.free_breakfast),
//        ],
//      ),

    body: _InfiniteGridView(),

    );
  }
}


class _InfiniteGridView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _InfiniteGridViewState();



}


class _InfiniteGridViewState extends State<_InfiniteGridView>{

  List<IconData> _icons = []; //保存Icon数据

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _retrieveIcons();
  }

  @override
  Widget build(BuildContext context) {

    return GridView.builder(
      //SliverGridDelegateWithFixedCrossAxisCount等宽
      // SliverGridDelegateWithMaxCrossAxisExtent 限制长度（长度比屏幕小，一行展示，长度比屏幕大，多行展示）
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 240,
          //主轴之间的间距
          //mainAxisSpacing: ,
          //纵轴之间的间距
          //crossAxisSpacing: ,
          childAspectRatio: 2.0,
    ), itemBuilder: (context,index) {

      if (index == _icons.length - 1 && _icons.length < 200) {
        _retrieveIcons();
      }
      return Icon(_icons[index]);



    },itemCount: _icons.length,
    );
  }




  void _retrieveIcons(){
    Future.delayed(Duration(microseconds: 200)).then((e){
      setState(() {
        _icons.addAll([ Icons.ac_unit,
          Icons.airport_shuttle,
          Icons.all_inclusive,
          Icons.beach_access, Icons.cake,
          Icons.free_breakfast]);
        
      });
    });


  }
}