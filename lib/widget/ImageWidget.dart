import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Image和icon"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage("assets/image/jj.jpg"),
              width: 100,
              height: 100,
              fit: BoxFit.none,
            ),
            Image.network(
              "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
              width: 100,
              fit: BoxFit.cover,
            ),
            SwitchAndCheckBoxTest()
          ],
        ),
      ),
    );
  }
}

class SwitchAndCheckBoxTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return _SwitchAndCheckBoxTestState();
  }
}

class _SwitchAndCheckBoxTestState extends State<SwitchAndCheckBoxTest> {
  bool _switchSelected = false;
  bool _checkboxSelected = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      child: Column(
        children: <Widget>[
          Switch(
            activeColor: Colors.orange,
              value: _switchSelected,
              onChanged: (value) {
                setState(() {
                  _switchSelected = value;
                });
              }),
          Checkbox(
            activeColor: Colors.red,
              value: _checkboxSelected,
              onChanged: (value) {
                setState(() {
                  _checkboxSelected = value;
                });
              })
        ],
      ),
    );
  }
}
