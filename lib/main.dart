import 'package:flutter/material.dart';
import 'package:flutterhomescreen/constans.dart';
import 'package:flutterhomescreen/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: PrimaryColor),
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}