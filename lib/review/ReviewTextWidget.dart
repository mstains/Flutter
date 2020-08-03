import 'package:flutter/material.dart';

class ReviewTextHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Text控件"),

      ),
      body: Center(

        child: Column(

          children: <Widget>[

           Container(
             padding: EdgeInsets.only(top: 8,bottom: 8),
             child:  Text("无样式"),
           ),
            Container(

              child:  Text("黑底白字",style: TextStyle(
                color: Colors.white,
                background: new Paint()..color = Colors.black
              ),textAlign: TextAlign.left,),
            ),


            Container(
              padding: EdgeInsets.only(top: 8,bottom: 8),
              child:  Text("【】【】【】我的世界【】【】【】你在吗【】【】【】浅墨然 【】【】【】【】biu biu biu" ,textAlign: TextAlign.center,),
            ),

            Container(
              child:  Text("单行文字 【】【】【】【】【】【】【】【】【】【】【】der【】嘻嘻" ,maxLines: 1,),

            ),
            Container(
              padding: EdgeInsets.only(top: 8,bottom: 8),
              child:  Text("多行文字，单行显示，末尾省略号「」【】【】【】【】【】【】" ,overflow: TextOverflow.ellipsis,maxLines: 1,),
            ),

            Container(
              width: 300,
              child:  Text("多行文字，指定宽度，末尾省略号「」【】【】【】【】【】【】字符集【】【】" ,overflow: TextOverflow.ellipsis,maxLines: 1,),
            ),

            Container(
              padding: EdgeInsets.only(top: 8,bottom: 8),
              child:  Text("文字展示--上划线" ,overflow: TextOverflow.ellipsis,maxLines: 1,style: TextStyle(decoration: TextDecoration.overline),),
            ),

            Container(
              child:  Text("文字展示--下划线" ,overflow: TextOverflow.ellipsis,maxLines: 1,style: TextStyle(decoration: TextDecoration.underline,color: Colors.yellow),),
            ),

            Container(
              padding: EdgeInsets.only(top: 8,bottom: 8),
              child:  Text("文字展示--删除线" ,overflow: TextOverflow.ellipsis,maxLines: 1,style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.red, ),),
            ),

            Container(
              child: Text("波浪线" ,style: TextStyle(color: Colors.black,backgroundColor: Colors.white,decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.dashed,decorationColor: Colors.red),),
            ),
            Container(
              padding: EdgeInsets.only(top: 8,bottom: 8),
              child: Text("不知道啥名字" ,style: TextStyle(color: Colors.white,backgroundColor: Colors.black,decorationStyle: TextDecorationStyle.solid,decorationColor: Colors.red),),
            ),

            Container(
              child: Text("粗字体" ,style: TextStyle(fontSize: 18,color: Colors.white,backgroundColor: Colors.black,fontWeight: FontWeight.bold),),
            ),
            Container(
              padding: EdgeInsets.only(top: 8,bottom: 8),
              child: Text("正常字体" ,style: TextStyle(fontSize: 18,color: Colors.white,backgroundColor: Colors.black,fontWeight: FontWeight.normal),),
            ),

            Container(
              child: Text("文字（单词）之间间距" ,style: TextStyle(color: Colors.black,letterSpacing: 14),),
            ),
            Container(
              padding: EdgeInsets.only(top: 8,bottom: 8),
              child: Text("hello word （配合单词之间中间空格）" ,style: TextStyle(color: Colors.black,wordSpacing: 6),),
            ),
            Text.rich(TextSpan(
              children: [
                TextSpan(text: "Home:"),
                TextSpan(text: "https://flutterchina.club",style: TextStyle(color: Colors.blue),)


              ],
            )),
            Container(
              padding: EdgeInsets.all(8),
              child: Text(" \uE90D",style: TextStyle(
                  fontFamily: "MaterialIcons",
                  color: Colors.green,
                  fontSize: 48
              ),),

            )
          ],
        ),


      ),

    );
  }


}