import 'package:flutter/material.dart';
import 'package:flutter_colab/page/home_page.dart';
import 'package:flutter_colab/page/login_page.dart';
import 'package:flutter_colab/page/signup_page.dart';
import 'package:flutter_colab/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    int days=30;
    String name ="Loni";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
            ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      //initialRoute:"/home" ,
      routes: {
        "/":(context)=>new HomePage(),
        MyRoutes.SignupRoute:(context)=>SignupPage(),
        MyRoutes.LoginRoute:(context)=>LoginPage(),
        //MyRoutes.SignupRoute:(context)=>SignupPage(),
 },
    );
  }
}
