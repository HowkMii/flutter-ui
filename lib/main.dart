import 'dart:ffi';
import 'package:flushbar/flushbar.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 final GlobalKey<ScaffoldState> _x =GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      key: _x,
      appBar: AppBar(

        leading: Padding(padding: EdgeInsets.only(left: 1),
          child:Row(
            children: [
              IconButton(icon: Icon(Icons.account_circle), onPressed: (){}),
              Expanded(child: IconButton(icon: Icon(Icons.account_circle), onPressed: (){}))
            ],) ,
        ),
        actions: [
          IconButton(icon: Icon(Icons.account_circle), onPressed: (){}),
          IconButton(icon: Icon(Icons.account_circle), onPressed: (){})
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:[
                Colors.deepPurpleAccent,
                Colors.pink
              ]
              
            )

          ),
        ),
        centerTitle: true,
        title: Text('Flutter',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
       
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SelectableText(
            "this  is a clipped text this  is a clipped text vthis  is a clipped text th",
            showCursor: true,
            toolbarOptions:ToolbarOptions(copy: true,) ,
            ),
          SizedBox(height: 8,),
          Container(
            width: 200,
            height: 40,
            color: Colors.green,
            child: Text("this  is a clipped text this  is a clipped text vthis  is a clipped text this  is a clipped text this  is a clipped text this  is a clipped text this  is a clipped text this  is a clipped text ",overflow: TextOverflow.fade,),
          ),
          SizedBox(height: 8,),
                    Container(
            width: 200,
            height: 40,
            color: Colors.green,
            child: Text("this  is a clipped text this  is a clipped text vthis  is a clipped text this  is a clipped text this  is a clipped text this  is a clipped text this  is a clipped text this  is a clipped text ",overflow: TextOverflow.clip,softWrap: false,),
          ),
          SizedBox(height: 8,),
                    Container(
            width: 200,
            height: 40,
            color: Colors.green,
            child: Text("this  is a clipped text this  is a clipped text vthis  is a clipped text this  is a clipped text this  is a clipped text this  is a clipped text this  is a clipped text this  is a clipped text ",overflow: TextOverflow.ellipsis,),
          ),
          SizedBox(height: 8,),
                    Container(
            width: 200,
            height: 40,
            color: Colors.green,
            child: Text("this  is a clipped text this  is a clipped text vthis  is a clipped text this  is a clipped text this  is a clipped text this  is a clipped text this  is a clipped text this  is a clipped text ",overflow: TextOverflow.visible,),

          ),
          SizedBox(height: 8,),
                    Container(
            width: 200,
            height: 40,
            color: Colors.green,
            child: Text("this  is a clipped text this  is a clipped text vthis  is a clipped text this  is a clipped text this  is a clipped text this  is a clipped text this  is a clipped text this  is a clipped text ",overflow: TextOverflow.fade,),
          ),
          SizedBox(height: 8,),
        ],
      )
    );
  }

}
