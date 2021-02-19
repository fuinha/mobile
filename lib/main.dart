import 'package:flutter/material.dart';
import 'package:petcode_app/screens/safety/scans/scans_screen.dart';
import 'package:petcode_app/utils/style_constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RouteScreen(),
    );
  }
}

class RouteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    StyleConstants().init(context);
    return ScansScreen();
  }
}
