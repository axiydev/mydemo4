import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  static final String id = "detail_page";
  final String name;
  int age;
  DetailPage({this.name,this.age});
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:FlatButton(
          onPressed:(){
            Navigator.of(context).pop({'data1':"name:${widget.name}",'data2':"age:${widget.age}"});
          },
          color:Colors.blue,
          child:Text('ButtonBack'),
        ),
      ),
    );
  }
}
