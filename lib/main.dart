import 'package:flutter/material.dart';
import 'package:posttest2_reza_1915016131/Home_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "hallo M.Fahreza_1915016131",
      home: new Home(),
    );
  }
}
