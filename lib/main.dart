import 'package:flutter/material.dart';
import 'package:petcode_app/providers/current_location_provider.dart';
import 'package:petcode_app/providers/scans_map_provider.dart';
import 'package:petcode_app/screens/safety/scans/scans_screen.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CurrentLocationProvider>(
          create: (_) => CurrentLocationProvider(),
        ),
        ChangeNotifierProvider<ScansMapProvider>(
          create: (_) => ScansMapProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'PetCode',
        home: RouteScreen(),
      ),
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
