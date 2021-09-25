import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterui/main.dart';
import 'package:flutterui/splashscreen.dart';
import 'package:page_view_indicator/page_view_indicator.dart'; 

class Data{
  final String title;
  final String descreption;
  final String  imageUrl;
  final IconData iconData;

  Data({
    @required this.title, 
    @required this.descreption, 
    @required this.imageUrl, 
    @required this.iconData 
  });

}
class Indicator extends StatelessWidget{
  final int index;
  Indicator(this.index);
  @override
  Widget build(BuildContext context) {
   return Align(
     alignment: Alignment(0,0.7),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         buildContainer(0,index==0?Colors.white:Colors.grey),
         buildContainer(1,index==1?Colors.white:Colors.grey),
         buildContainer(2,index==2?Colors.white:Colors.grey),
         buildContainer(3,index==3?Colors.white:Colors.grey),
       ],
     ),
   );
  }

  Widget buildContainer(int i, Color color ) {
    return index==i? Icon(Icons.star) : Container(
      margin: EdgeInsets.all(4),
      height: 15,
      width: 15,
      decoration: BoxDecoration(
      color: color,
      shape: BoxShape.circle,
        
   ),
 );
  }

}


class PView extends StatefulWidget { 
  
  @override
  _PViewState createState() => _PViewState();
}

class _PViewState extends State<PView> {
  int _currentIndex=0;
   final _pageIndexNotifier = ValueNotifier<int>(0);
  final PageController _controller =PageController();
  List<Data> myData =[
    Data(
      title: "title 1", 
      descreption: "How To Write Product Descriptions To Grow Online Sales GET THE PRINT VERSION No matter the size of your online store, product descriptions play a key role in your ecommerce business.", 
      imageUrl: "images/q1.jpg", 
      iconData: Icons.ac_unit),
    Data(
      title: "title 2", 
      descreption: "How To Write Product Descriptions To Grow Online Sales GET THE PRINT VERSION No matter the size of your online store, product descriptions play a key role in your ecommerce business.", 
      imageUrl: "images/q2.jpg", 
      iconData: Icons.ac_unit),
    Data(
      title: "title 3", 
      descreption: "How To Write Product Descriptions To Grow Online Sales GET THE PRINT VERSION No matter the size of your online store, product descriptions play a key role in your ecommerce business.", 
      imageUrl: "images/q3.jpg", 
      iconData: Icons.ac_unit),
    Data(
      title: "title 4", 
      descreption: "How To Write Product Descriptions To Grow Online Sales GET THE PRINT VERSION No matter the size of your online store, product descriptions play a key role in your ecommerce business.", 
      imageUrl: "images/q4.jpg", 
      iconData: Icons.ac_unit),
  ];
  @override
    void initState() {
     Timer.periodic(Duration(seconds: 6), (timer){
       if(_currentIndex<3) _currentIndex++;
      _controller.animateToPage(_currentIndex, duration: Duration(milliseconds: 3), curve: Curves.easeIn);
     });
      
    }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/a':(ctx)=> MyHomePage(),
        '/b':(ctx)=> MainSplachScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          alignment: Alignment(0,0.7),
          children: [
            Builder(
              builder:(ctx)=> PageView(
                controller:  _controller,
              children: 
                myData.map((item) => Container(
                  
                  decoration:BoxDecoration(
                    image: DecorationImage(image: ExactAssetImage(item.imageUrl),fit: BoxFit.cover)
                  ) ,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(item.iconData,size: 70,),
                      SizedBox(height: 50),
                      Text(item.title,style: TextStyle(color: Colors.black,fontSize: 26,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10),
                      Text(item.descreption, style: TextStyle(color: Colors.white,fontSize: 16),textAlign: TextAlign.center,)
                    ],
                  ),
                )).toList(),
                onPageChanged: (val){ 
                  _pageIndexNotifier.value = val;
                  setState(() {
                    _currentIndex=val;
                    if(_currentIndex==3){
                      Future.delayed(Duration(seconds: 6),()=>Navigator.of(ctx).pushNamed('/b'));
                    }
                    
                  });
                },
              
          ),
            ),
          //Indicator(_currentIndex),
          PageViewIndicator(
            pageIndexNotifier: _pageIndexNotifier,
            length: myData.length,
            normalBuilder: (_, index) => Circle(
                  size: 8.0,
                  color: Colors.black87,
                ),
            highlightedBuilder: (animationController, _) => ScaleTransition(
                  scale: CurvedAnimation(
                    parent: animationController,
                    curve: Curves.ease,
                  ),
                  child: Circle(
                    size: 12.0,
                    color: Colors.white,
                  ),
                ),
          ),
          Builder(
            builder: (ctx)=>Align(
              alignment: Alignment(0,0.9),
              
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: RaisedButton(
                  padding: EdgeInsets.all(7),
                    color: Colors.yellow,
                    child: Text("Get Started",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                    onPressed: (){
                      Navigator.of(ctx).pushNamed('/b');
                    },
                  ),
              ),
          )
            
            )
          ],
        ),
      ),
      
    );
  }
}