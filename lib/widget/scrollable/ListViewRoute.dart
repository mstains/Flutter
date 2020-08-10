import 'package:flutter/material.dart';

class ListViewRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

   return Scaffold(

     appBar: AppBar(
       title: Text("ListView"),
       centerTitle: true,
     ),

     body: Container(

       child: ListView(

         shrinkWrap: true,
         itemExtent: 100,

         children: <Widget>[

           const Text('I\'m dedicating every day to you'),
           const Text('Domestic life was never quite my style'),
           const Text('When you smile, you knock me out, I fall apart'),
           const Text('And I thought I was so smart'),
           const Text('I\'m dedicating every day to you'),
           const Text('Domestic life was never quite my style'),
           const Text('When you smile, you knock me out, I fall apart'),
           const Text('And I thought I was so smart'),
           const Text('I\'m dedicating every day to you'),
           const Text('Domestic life was never quite my style'),
           const Text('When you smile, you knock me out, I fall apart'),
           const Text('And I thought I was so smart'),
           const Text('I\'m dedicating every day to you'),
           const Text('Domestic life was never quite my style'),
           const Text('When you smile, you knock me out, I fall apart'),
           const Text('And I thought I was so smart'),
           const Text('I\'m dedicating every day to you'),
           const Text('Domestic life was never quite my style'),
           const Text('When you smile, you knock me out, I fall apart'),
           const Text('And I thought I was so smart'),



         ],

       ),


     ),


   );
  }



}