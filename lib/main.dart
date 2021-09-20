import 'dart:ffi';
import 'package:flushbar/flushbar.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
 List imgList=[
  'images/s1.jpg',
  'images/s2.jpg',
  'images/s3.jpg',
 ];

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
      body:ListView(
        children: [
          SizedBox(height: 50,),
          Text("mSlider 1 initial page Index 0\n\n",textAlign: TextAlign.center,),
          CarouselSlider(
            //1st methode
            options: CarouselOptions(height: 186,initialPage:0 ,enlargeCenterPage: true, autoPlay: true, autoPlayAnimationDuration: Duration(seconds:1 ), enableInfiniteScroll: false,pauseAutoPlayOnTouch: false, reverse: true),
            items: imgList.map((imageUrl) {
              return Container(
                width: double.infinity,
                //margin: EdgeInsets.symmetric(horizontal: 10),
                child:Image.asset(imageUrl,fit: BoxFit.fill,) ,
              );
            }).toList(),
          ),
         
        ],
      ),
    );
  }

}
