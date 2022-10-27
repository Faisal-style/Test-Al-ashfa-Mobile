import 'package:ashfa/Pages/home_screen.dart';
import 'package:ashfa/Pages/login_screen.dart';
import 'package:ashfa/Pages/opening_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Al-ashfa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: OpeningScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => OpeningScreen(),
        '/loginscren': (context) => LoginScreen(),
        '/loginscren/home': (context) => homeScreen(),
      },
    );
  }
}
