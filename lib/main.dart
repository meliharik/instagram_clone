import 'package:flutter/material.dart';
import 'package:instagram/add_screen.dart';
import 'package:instagram/home_screen.dart';
import 'package:instagram/login_screen.dart';
import 'package:instagram/notification_screen.dart';
import 'package:instagram/profile_screen.dart';
import 'package:instagram/search_screen.dart';
import 'package:instagram/search_screen2.dart';
import 'package:instagram/signup_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram",
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        HomeScreen.id: (context) => HomeScreen(scrollController),
        SearchScreen.id: (context) => SearchScreen(),
        SearchScreen2.id: (context) => SearchScreen2(),
        AddScreen.id: (context) => AddScreen(),
        NotificationScreen.id: (context) => NotificationScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
      },
    );
  }
}
