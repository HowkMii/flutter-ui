import 'package:flutter/material.dart';

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

class PView extends StatefulWidget {
  @override
  _PViewState createState() => _PViewState();
}

class _PViewState extends State<PView> {
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
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
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
          
        ),
      ),
      
    );
  }
}