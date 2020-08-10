import 'package:flutter/material.dart';

class ScrollControllerTestRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ScrollControllerTestRouteState();
}

class _ScrollControllerTestRouteState extends State<ScrollControllerTestRoute> {
  ScrollController _controller = ScrollController();
  bool isShwoToTopBtn = false;

  String _progress = "0%";

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      //打印移动距离
      print(_controller.offset);

      if (_controller.offset < 1000 && isShwoToTopBtn) {
        setState(() {
          isShwoToTopBtn = false;
        });
      } else if (_controller.offset >= 1000 && (isShwoToTopBtn == false)) {
        setState(() {
          isShwoToTopBtn = true;
        });
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ScrollController"),
        centerTitle: true,
      ),
//      body: Container(
//        child: ListView.builder(
//            controller: _controller,
//            itemCount: 50,
//            //item固定高度
//            //itemExtent: ,
//            itemBuilder: (context, index) {
//              return ListTile(
//                title: Text("${index}"),
//              );
//            }),
//      ),
//      floatingActionButton: !isShwoToTopBtn
//          ? null
//          : FloatingActionButton(
//              onPressed: () {
//                _controller.animateTo(.0,
//                    duration: Duration(microseconds: 200), curve: Curves.ease);
//              //_controller.jumpTo(.0);
//              },
//              child: Icon(Icons.arrow_upward),
//            ),
    //

      body: Scrollbar(child: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification notification){

          double  progress = notification.metrics.pixels / notification.metrics.maxScrollExtent;

          setState(() {
            _progress = "${(progress * 100).toInt()}%";
          });

        },


          child: Stack(
            alignment: Alignment.center,
            children: [
              ListView.builder(itemCount: 50,itemExtent: 50,itemBuilder: (context,index){

                return ListTile(title: Text("${index}"),);
              }),
              CircleAvatar(
                radius: 30,
                child: Text("${_progress}"),
                backgroundColor: Colors.black54,
              )

            ],


          ))),
    );
  }
}
