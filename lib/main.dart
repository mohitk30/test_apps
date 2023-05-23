import 'package:another_test/utilis/routes.dart';
import 'package:another_test/views/app_landing.dart';
import 'package:another_test/views/app_login.dart';
import 'package:another_test/views/cart_page.dart';
import 'package:another_test/views/home_details_page.dart';
import 'package:another_test/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp( 
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      
      //  ThemeData(
        // primarySwatch: Colors.deepPurple,
        // fontFamily: 'Cirka',
        // appBarTheme:    const  AppBarTheme(
          // applying the app theme to all app-bars
          // color: Colors.white,
          // elevation: 0.0,
          // iconTheme:    IconThemeData(color: Colors.black),
          // textTheme: Theme.of(context).textTheme   deprecated not used now

        // )
        // fontFamily: GoogleFonts.lato().fontFamily
        // primaryTextTheme: GoogleFonts.latoTextTheme()
        // ),
      darkTheme: MyTheme.dartTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/":(context)=> const Login(),
        MyRoutes.loginRoute:(context)=> const Login(),
        MyRoutes.homeRoute:(context)=> const AppLanding(),
         MyRoutes.cartRoute:(context)=> const CartView(),
        // MyRoutes.homeDetailsRoute:(context)=> const HomeDetailsPage(),

      },
      
    );
  }
}