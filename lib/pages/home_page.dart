import 'package:flutter/material.dart';
import 'package:demo/pages/detail_page.dart';
class HomePage extends StatefulWidget {
  static final String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  String data1="ButtonOne",data2;
  Future _openDetail() async{
   Map result = await Navigator.of(context).push(new MaterialPageRoute(
        builder:(BuildContext context){
      return new DetailPage(name:"Flutter",age:22);
    }
    ));
   if(result!=null && result.containsKey('data1')&&result.containsKey('data2')){
     setState((){
       data1=result['data1'];
     });
   }else{print("nothing");}
  }
  @override
  Widget build(BuildContext context) => Scaffold(
    body:Center(
   child:Row(
     children:[
       FlatButton(
         onPressed: (){
           _openDetail();
         },
         child:Text(data1),
         color:Colors.blue,
       ),
       Spacer(),
       if(data2!=null)FlatButton(
         onPressed: (){
           _openDetail();
         },
         child:Text(data2),
         color:Colors.red,
       ),
     ],
   ),
    ),
  );
}
