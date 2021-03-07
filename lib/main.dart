import 'package:flutter/material.dart';
import 'package:petcode_app/providers/current_location_provider.dart';
import 'package:petcode_app/providers/pet_parks_map_provider.dart';
import 'package:petcode_app/providers/pet_parks_panel_provider.dart';
import 'package:petcode_app/providers/pet_parks_provider.dart';
import 'package:petcode_app/providers/scans_map_provider.dart';
import 'package:petcode_app/set_up_keys.dart';
import 'package:petcode_app/utils/routes.gr.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SetUpKeys().createKeys();

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
        ChangeNotifierProvider<PetParksProvider>(
          create: (_) => PetParksProvider()..setUpProvider(),
        ),
        ChangeNotifierProxyProvider<PetParksProvider, PetParksMapProvider>(
          create: (_) => PetParksMapProvider(),
          update: (BuildContext context, PetParksProvider petParksProvider,
              PetParksMapProvider petParksMapProvider) {
            return petParksMapProvider..setParks(petParksProvider.petParks);
          },
        ),
        ChangeNotifierProvider<PetParksPanelProvider>(
          create: (_) => PetParksPanelProvider(),
        ),
      ],
      child: MaterialApp.router(
        title: 'PetCode',
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}