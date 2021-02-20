import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

  //double height = StyleConstants.height;

  int currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;



    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: _pageOptions,
      ),
      bottomNavigationBar: SizedBox(
        //height: height * 0.12,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) => _onItemTapped(index),
          selectedItemColor: StyleConstants.pcBlue,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black.withOpacity(0.2),
          unselectedIconTheme: IconThemeData(size: height * 0.028),
          selectedIconTheme: IconThemeData(size: height * 0.028),
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.shieldAlt),
              label: 'Safety',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.heartbeat),
              label: 'Health',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.search),
              label: 'Discovery',
            ),
          ],
        ),
      ),
    );
  }
}
