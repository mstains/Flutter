import 'package:flutter/material.dart';

class DrawerRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(

    appBar: AppBar(
      //自定义左侧栏图片并打开
//      leading: Builder(builder: (context) => IconButton(icon: Icon(Icons.send), onPressed: (){
//        Scaffold.of(context).openDrawer();
//      })),
      title: Text("侧滑菜单栏"),
      centerTitle: true,

    ),
    drawer: _LeftTopDrawer(),


  );
}

class _LeftTopDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LeftTopDrawerState();
}

class _LeftTopDrawerState extends State<_LeftTopDrawer> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: MediaQuery.removePadding(
          removeTop: true,
          context: context,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(padding: const EdgeInsets.only(top: 38.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ClipOval(
                      child: Image.asset("assets/image/user_photo.png",width: 80,),
                    ),
                    ),
                   Container(
                     alignment: Alignment.bottomCenter,
                     child: Text("mstains",style: TextStyle(fontSize: 16),),
                   )
                  ],
                ),
              ),

              Expanded(
                  child: ListView(

                children: <Widget>[

                  ListTile(
                    leading: const Icon(Icons.add),
                    title:const Text("Add account"),

                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title:const Text("Manage accounts"),

                  ),


                ],
              ))

            ],
          )
      ),
    );
  }
}
