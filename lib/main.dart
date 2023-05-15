import 'package:flutter/material.dart';
import 'package:wpp/pages/ChatPage.dart';
import 'package:wpp/pages/HomePage.dart';
import 'package:wpp/pages/SettingsPage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(//tirar o const
          color: Color(0xFF075E55),
        ),
        // To transparent the bottom sheet on chat page you will see.
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.white.withOpacity(0),
        ),
      ),
      routes: {
        "/" : (context) => HomePage(),
        "settingsPage" : (context) => SettingsPage(),
        "chatPage": (context) => ChatPage(),
      }
    );
  }
}