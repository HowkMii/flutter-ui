import 'package:flutter/material.dart';

void main() =>runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(text: "Pink",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35,color: Colors.pink)),
              TextSpan(text: "/",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35,color: Colors.black)),
              TextSpan(text: "Amber",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35,color: Colors.amber)),
            ]
          ),
        ),
      ),

    );
  }
  Text buildText() {
    return Text(
            'You have pushed the button this many times:',
          );
  }
}
