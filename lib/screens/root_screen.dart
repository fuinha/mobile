import 'package:flutter/material.dart';
import 'package:petcode_app/screens/discovery_screen.dart';
import 'package:petcode_app/screens/health_screen.dart';
import 'package:petcode_app/screens/safety_screen.dart';
import 'package:petcode_app/utils/style_constants.dart';

import 'dashboard/dashboard_screen.dart';

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {

  final List<Widget> _pageOptions = [
    DashboardScreen(),
    SafetyScreen(),
    HealthScreen(),
    DiscoveryScreen()
  ];

  double height = StyleConstants.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Text('Root Screen',),
      ),
    );
  }
}
