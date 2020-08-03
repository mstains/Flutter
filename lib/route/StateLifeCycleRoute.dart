import 'package:flutter/material.dart';

//State生命周期
class StateLifeCycleRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //return CounterWidget();
    
    return Scaffold(
      appBar: AppBar(
        title: Text("子树中获取State对象"),
      ),

      body: Center(

        child: Builder(builder: (context){

          return RaisedButton(onPressed: (){

            ScaffoldState _scaffold = Scaffold.of(context);
            
            _scaffold.showSnackBar(SnackBar(content: Text("我是SnackBar")));

          },

          child: Text("显示SnackBar"),);

        }),


      ),
      
      
    );
  }
}

class CounterWidget extends StatefulWidget {
  final int initValue;

  const CounterWidget({Key key, @required this.initValue : 0});

  @override
  State<StatefulWidget> createState() {
    return _CounterWidgetState();
  }
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _counter = widget.initValue;

    print("initState");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sate生命周期"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[

            FlatButton(onPressed: (){

              setState(() => ++_counter);

            }, child: Text("$_counter")),

          ],
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(CounterWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    print("didUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactive");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }
}



