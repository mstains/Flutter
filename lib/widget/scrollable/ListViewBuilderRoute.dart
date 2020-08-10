import 'package:flutter/material.dart';

class ListViewBuilderRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text("ListViewBuilderRoute"),
        centerTitle: true,
      ),
      body: _ListViewBuilder(),
    );
  }
}

class _ListViewBuilder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListBuildState();
}

class _ListBuildState extends State<_ListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      child: ListView.builder(
        //滚动方向，默认垂直方向
        //scrollDirection: Axis.horizontal,
          //item总长度
          itemCount: 100,
          //item高度（垂直方向滚动，item高度,水平方向滚动，item宽度）
          itemExtent: 50,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("${index}"),
            );
          }),
    );
  }
}
