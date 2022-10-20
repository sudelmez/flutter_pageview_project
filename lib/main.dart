import 'package:flutter/material.dart';
import 'product/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData.light().copyWith(
          appBarTheme: AppBarTheme(
              titleTextStyle: TextStyle(color: Colors.black),
              centerTitle: true,
              backgroundColor: Colors.transparent)),
    );
  }
}
