import 'package:flutter/material.dart';
import 'package:demo/pages/detail_page.dart';
class HomePage extends StatefulWidget {
  static final String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    body:Center(
      child:FlatButton(
        onPressed:(){
          Navigator.pushNamed(context,DetailPage.id);
        },
        color: Colors.blue,
        child:Text("Detail Page"),
      ),
    ),
  );
}
