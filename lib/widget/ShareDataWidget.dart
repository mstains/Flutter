import 'package:flutter/material.dart';

//数据共享
class ShareDataWidget extends InheritedWidget{

  final int data;

  ShareDataWidget({@required this.data,Widget child}) : super (child : child);


  static ShareDataWidget of(BuildContext context) {

    return context.getElementForInheritedWidgetOfExactType<ShareDataWidget>().widget;
  }

  //该回调决定当data发生变化时，是否通知子树中依赖data的Widget
  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return oldWidget.data != data;
  }

}