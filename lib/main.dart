import 'package:flutter/material.dart';
import 'package:giris_ekranlari/fourth_screen.dart';
import 'package:giris_ekranlari/mavired_login.dart';
import 'package:giris_ekranlari/signup.dart';
import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPageView(),
    );
  }
}

class MyPageView extends StatelessWidget {
  final List<Widget> pages = [
    LoginScreen(),
    SecondScreen(),
    ThirdScreen(),
    FourthScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: pages,
      ),
    );
  }
}
