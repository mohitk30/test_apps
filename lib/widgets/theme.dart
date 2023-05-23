import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme{
   static ThemeData   lightTheme (BuildContext context)=> ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Cirka',
         cardColor: Colors.white,
         canvasColor: creamColor,
         buttonColor: darkBlueishColor,
         accentColor: darkBlueishColor,
        appBarTheme:    const  AppBarTheme(
          // applying the app theme to all app-bars
          color: Colors.white,
          elevation: 0.0,
          iconTheme:    IconThemeData(color: Colors.black), 
             ) 
        );


       static ThemeData   dartTheme (BuildContext context)=> ThemeData(
        brightness: Brightness.dark,
         fontFamily: 'Cirka',
         cardColor: Colors.black,
         canvasColor: darkCreamColor,
         buttonColor: lightBlueishColor,
         accentColor: Colors.white,
         appBarTheme:    const  AppBarTheme(
          // applying the app theme to all app-bars
          color: Colors.white,
          elevation: 0.0,
          iconTheme:    IconThemeData(color: Colors.white), 
             ) 
        );

        static Color creamColor=const Color(0xffff5f5f5);
        static Color darkCreamColor=Vx.gray900;
        static Color darkBlueishColor= const Color(0xfff403b58);
        static Color lightBlueishColor= Vx.indigo500;
}