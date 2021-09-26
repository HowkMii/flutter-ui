import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutterui/view.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  SharedPreferences perfs=await SharedPreferences.getInstance();
  perfs.getBool('h');
  runApp(PView());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primaryColor: Colors.blue,canvasColor: Colors.white
      ),
      darkTheme: ThemeData(primaryColor: Colors.deepPurple,canvasColor: Colors.black),
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
 ThemeMode tm = ThemeMode.light;
 bool _swval=false;
 String _selectedLetter;
 String get txt{
   String str ="You selected:\n";
   if(js==true) str+="JavaScript\n";
   if(cSharp==true) str+="C sharp\n";
   
   else str+="None\n";
   return str;
 }
 List _letterList = ['A','B','C','D','E'];
 List imgList=[
  'images/s1.jpg',
  'images/s2.jpg',
  'images/s3.jpg',
 ];

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: tm,
      theme: ThemeData(primaryColor: Colors.blue,canvasColor: Colors.white),
      darkTheme: ThemeData(primaryColor: Colors.black,canvasColor: Colors.black87),
      home:Scaffold(
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
        body:Center()   
      )
    );
      
  }

  ListView buildExpansionTile() {
    return ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ExpansionTile(
              backgroundColor: Colors.pinkAccent,
              leading: Icon(Icons.perm_identity),
              title: Text("Account"),
              children: [
                Divider(color: Colors.grey,),
                ListTile(
                  leading: Icon(Icons.add),
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: Text("Sign in"),
                  subtitle: Text("where You can Register An account"),
                  onTap: (){},

                )
               
              ],
            ),
          ),
          SizedBox(height: 10,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: ExpansionTile(
               backgroundColor: Colors.greenAccent,
              title: Text("More info"),
              children: [
                Divider(color: Colors.grey,),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("Contact"),
                  subtitle: Text("where You can Callus"),
                  onTap: (){},

                )
               
              ],
          ),
           ),
        ],
      );
  }
  Center buildDropdownButton() {
    return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            DropdownButton(
              hint: Text("Select a letter!"),
              value:_selectedLetter,
              items: 
               _letterList.map((item) {
                 return DropdownMenuItem(child: Text(item),value: item,);
               }).toList(),
              
              onChanged: (newval){
                setState(() {
                  _selectedLetter=newval;
                });
              },
              )
          ],
        ),
      );
  }
  Center thememodeee() {
    return Center(
        child: 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("Light"),
              ),
              Switch(
                value: _swval, 
                onChanged: (bool value){
                  setState(() {
                    _swval=value;
                    if(_swval==false)tm=ThemeMode.light;
                    else tm=ThemeMode.dark;
                  });

                },
                activeColor: Colors.black,
                inactiveThumbColor: Colors.white,
                ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("Dark"),
              )
            ],

        ),
      );
  }
  Padding buildCheckbox(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child:Column(
        children: [
          Row(
            children:[
              Checkbox(
                value: js, 
                onChanged: (value){
                  setState(() {
                    js=value;
                  });
                }
              ),
              Text("JS"),

            ],
          ),
          CheckboxListTile(
            value: cSharp, 
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (value){
                  setState(() {
                    cSharp=value;
                  });
              }, 
            title:Text("C#") ,),
          RaisedButton(
            child: Text("Apply!"),
            onPressed: (){
              var ad =AlertDialog(
                title: Text("Thank you for applying!"),
                content:Text(txt),
              );
              showDialog(context: context, builder: (BuildContext ctx){
                 return ad;
             });
            },
          )
        ],
      ) ,
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
