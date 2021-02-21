import 'package:flutter/material.dart';
import 'package:petcode_app/providers/current_location_provider.dart';
import 'package:petcode_app/providers/scans_map_provider.dart';
import 'package:petcode_app/screens/safety/scans/scans_screen.dart';
import 'package:petcode_app/utils/routes.gr.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

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
      child: MaterialApp.router(
        title: 'PetCode',
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}