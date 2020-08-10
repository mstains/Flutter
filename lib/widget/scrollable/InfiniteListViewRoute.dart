import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class InfiniteListViewRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InfiniteListViewState();
}

class _InfiniteListViewState extends State<InfiniteListViewRoute> {
  static const loadingTag = "##loading##";

  var _words = <String>[loadingTag];

//  @override
//  void initState() {
//    super.initState();
//    _retrieveData();
//    print(_words);
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("模拟网络请求"),
        ),
        body: Column(
          children: <Widget>[
            ListTile(
              title: Text("商品列表",style: TextStyle(color: Colors.orange,fontSize: 18),),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: _words.length,
                itemBuilder: (BuildContext context, int index) {
                  //如果到了表尾
                  if (_words[index] == loadingTag) {
                    //不足100条，继续获取数据
                    if (_words.length - 1 < 100) {
                      _retrieveData();
                      return Container(
                        padding: const EdgeInsets.all(16),
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 24.0,
                          height: 24.0,
                          child: CircularProgressIndicator(
                            strokeWidth: 2.0,
                          ),
                        ),
                      );
                    } else {
                      return Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          "没有更多了",
                          style: TextStyle(color: Colors.grey),
                        ),
                      );
                    }
                  }

                  return ListTile(
                    title: Text("${_words[index]}"),
                  );
                },
                separatorBuilder: (context, index) => Divider(
                  height: .0,
                ),
              ),
            ),
          ],
        ));
  }

  void _retrieveData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      setState(() {
        _words.insertAll(_words.length - 1,
            generateWordPairs().take(20).map((e) => e.asPascalCase).toList());
        print(_words);
      });
    });
  }
}
