import 'package:flutter/material.dart';

class ProgressWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProgressState();
}

class _ProgressState extends State<ProgressWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        new AnimationController(vsync: this, duration: Duration(seconds: 10));
    _animationController..forward();
    _animationController.addListener(() {
      setState(() => {
        print("=====")
      });

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("进度条"),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              LinearProgressIndicator(
                value: .5,
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: CircularProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation(Colors.red),
                  strokeWidth: 2,
                ),
              ),
              //自定义尺寸
              SizedBox(
                height: 2,
                child: LinearProgressIndicator(
                  value: _animationController.value,
                  backgroundColor: Colors.grey[200],
                  valueColor: ColorTween(begin: Colors.orange,end: Colors.blue).animate(_animationController),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
