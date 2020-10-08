import 'package:flutter/material.dart';
import 'package:demo/pages/detail_page.dart';
class HomePage extends StatefulWidget {
  static final String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  Future _openDetail() async{
    await Navigator.of(context).push(new MaterialPageRoute(
        builder:(BuildContext context){
      return new DetailPage(name:"Axmadjon",age:19);
    }
    ));
  }
  @override
  Widget build(BuildContext context) => Scaffold(
    body:Center(
     child:FlatButton(
      onPressed: (){
        _openDetail();
      },
       color:Colors.green,
       child:Text('ButtonOne'),
     ),
    ),
  );
}
