import 'package:flutter/material.dart';
import 'package:nike_shop_app/pages/HomePage.dart';
import 'package:nike_shop_app/pages/ItemPage.dart';
import 'package:nike_shop_app/pages/LoginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFCEDDEE),
      ),
      routes: {
        '/': (context) => LoginPage(),
        'homePage': (context) => HomePage(),
        'itemPage': (context) => ItemPage(),
      },
    );
  }
}