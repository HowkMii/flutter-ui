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
          seconds: 3,
          title: Text("Splash Screen"),
        ),
       
      ),
    );
  }
}