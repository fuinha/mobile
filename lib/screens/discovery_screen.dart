import 'package:flutter/material.dart';
import 'package:petcode_app/screens/onboarding/splash_screen.dart';
import 'package:petcode_app/screens/settings/settings_screen.dart';
import 'package:petcode_app/utils/custom_icons/petcode_icons.dart';

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
          icon: Icon(PetCodeIcons.medicalicon),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) => SplashScreen()));
          },
        )
      ),
    );
  }
}
