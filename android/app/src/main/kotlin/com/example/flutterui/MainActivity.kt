package com.example.flutterui

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    var x = findViewById("hello")
    x.setText("hello")
    for(i in 10){
        x.setTextColor("#122134")
    }
}
