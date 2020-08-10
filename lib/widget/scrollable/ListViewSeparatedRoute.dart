import 'package:flutter/material.dart';

class ListViewSeparatedRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text("ListView下划线"),
      ),
      body: _ListViewSeparated(),
    );
  }
}

class _ListViewSeparated extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListViewSeparatedState();
}

class _ListViewSeparatedState extends State<_ListViewSeparated> {
  Widget _divider1 = Divider(color: Colors.blue);

  Widget _divider2 = Divider(
    color: Colors.orange,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("${index}"),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return index % 2 == 0 ? _divider1 : _divider2;
          },
          itemCount: 100),
    );
  }
}
