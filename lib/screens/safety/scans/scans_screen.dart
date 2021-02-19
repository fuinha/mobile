import 'package:flutter/material.dart';
import 'package:petcode_app/screens/safety/scans/scans_map.dart';
import 'package:petcode_app/widgets/back_app_bar.dart';

class ScansScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(name: 'Scan Locations',),
      body: ScansMap(),
    );
  }
}

