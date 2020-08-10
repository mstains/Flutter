import 'package:flutter/material.dart';

class ConstrainedBoxWidget extends StatelessWidget {
  Widget redBox = DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("尺寸限制类容器"),
        actions: <Widget>[
          UnconstrainedBox(
            child: SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation(Colors.orange),
              ),
            ),
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: double.infinity,
                minHeight: 50.0,
              ),
              child: Container(
                height: 5,
                child: redBox,
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: Container(
                color: Colors.blue,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "多重限制",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(minWidth: 60, minHeight: 60), //父
              child: ConstrainedBox(
                constraints: BoxConstraints(minWidth: 90, minHeight: 20),
                child: redBox,
              ), //子
            ),
            Container(
              height: 1,
              color: Colors.cyan,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(minWidth: 90, minHeight: 20), //父
              child: ConstrainedBox(
                constraints: BoxConstraints(minWidth: 60, minHeight: 60),
                child: redBox,
              ), //子
              //说明：此时生效的minWidth是父控件的minWidth：90，minHeight是子控件的minHeight：60
            ),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: Container(
                color: Colors.blue,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "去除父控件限制",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(minWidth: 90, minHeight: 60),
              child: UnconstrainedBox(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 100, minHeight: 20),
                  child: redBox,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
