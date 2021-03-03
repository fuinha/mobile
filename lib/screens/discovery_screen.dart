import 'package:flutter/material.dart';
import 'package:petcode_app/screens/settings/settings_screen.dart';

class DiscoveryScreen extends StatefulWidget {
  @override
  _DiscoveryScreenState createState() => _DiscoveryScreenState();
}

class _DiscoveryScreenState extends State<DiscoveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          icon: Icon(Icons.settings),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) => SettingsScreen()));
          },
        )
      ),
    );
  }
}
