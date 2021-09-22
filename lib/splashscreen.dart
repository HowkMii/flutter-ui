import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
class MainSplachScreen extends StatefulWidget {
  @override
  _MainSplachScreenState createState() => _MainSplachScreenState();
}

class _MainSplachScreenState extends State<MainSplachScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SplashScreen(
          backgroundColor: Colors.black45,
          photoSize: 90,
          image: Image.asset('images/s3.jpg'),
          seconds: 3,
          title: Text("Splash Screen"),
          loaderColor: Colors.yellow,
          loadingText: Text("Getting page ready"),
        ),
       
      ),
    );
  }
}