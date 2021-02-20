import 'package:flutter/material.dart';
import 'package:petcode_app/screens/root_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PetCode Mobile',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: RootScreen(),
    );
  }
}
