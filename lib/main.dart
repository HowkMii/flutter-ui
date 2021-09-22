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
 int _currenIndex;
 int _radioValue=0;
 String result;
 Color resultColor;
 bool js=false;
 bool cSharp = false;
 bool python = false;
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
      body:Padding(
        padding: const EdgeInsets.all(18.0),
        child:Column(
          children: [
            Row(
              children:[
                Checkbox(value: value, onChanged: onChanged),
                Text(""),

              ],
            ),
            CheckboxListTile(value: value, onChanged: onChanged, title: ,),
            
          ],
        ) ,
      )      
    );
  }

  RadioListTile buildRadioListTile(val,txt,stxt) {
    return RadioListTile(
    value: val ,
    groupValue: _radioValue, 
    onChanged: (value){
      setState(() {
              _radioValue=value;
            });
    },
    title: Text(txt),
    subtitle: Text(stxt),
    

  );

  } 
  Container buildContainer(index) {
    return Container(
          width: 10,
          height: 10,
          margin: EdgeInsets.symmetric(horizontal: 3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            
            color: _currenIndex==index? Colors.blue:Colors.grey,
          ),
        );
  }
  Container buildCarousel() {
      return Container(
        child: ListView(
          children: [
            SizedBox(height: 50,),
            Text("mSlider 1 initial page Index 0\n\n",textAlign: TextAlign.center,),
            CarouselSlider(
              //1st methode
              options: CarouselOptions(height: 186,initialPage:0 ,onPageChanged: (index ,_){setState(() {
                            _currenIndex=index;
                          });},enlargeCenterPage: true, autoPlay: true, autoPlayAnimationDuration: Duration(seconds:3 ), enableInfiniteScroll: false,pauseAutoPlayOnTouch: false, reverse: true),
              items: imgList.map((imageUrl) {
                return Container(
                  width: double.infinity,
                  //margin: EdgeInsets.symmetric(horizontal: 10),
                  child:Image.asset(imageUrl,fit: BoxFit.fill,) ,
                );
              }).toList(),
            ),
            SizedBox(height: 30,),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildContainer(0),
                buildContainer(1),
                buildContainer(2),
              ],
            ),
          ],
        ),
      );
    }
}
