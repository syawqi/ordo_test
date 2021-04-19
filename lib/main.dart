import 'package:flutter/material.dart';
import 'package:ordo/screens/main.dart';
import 'package:ordo/utils/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: ColorPalate.primaryColor,
      ),
      home: MainScreen(),
    );
  }
}
