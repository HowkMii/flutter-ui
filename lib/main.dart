import 'dart:ffi';

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
 

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
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
      body:Center(
        child: RaisedButton(
          child: Text("data"),
          onPressed:(){} ,
        )
        ,
      ),
    );
  }
}
