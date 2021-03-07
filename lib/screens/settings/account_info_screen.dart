import 'package:flutter/material.dart';
import 'package:petcode_app/widgets/back_app_bar.dart';

class AccountInfoScreen extends StatefulWidget {
  @override
  _AccountInfoScreenState createState() => _AccountInfoScreenState();
}

class _AccountInfoScreenState extends State<AccountInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(
        name: 'Account Information',
      ),
    );
  }
}
