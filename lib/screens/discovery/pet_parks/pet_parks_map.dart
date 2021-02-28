import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:petcode_app/providers/current_location_provider.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:provider/provider.dart';

class PetParksMap extends StatefulWidget {
  @override
  _PetParksMapState createState() => _PetParksMapState();
}

class _PetParksMapState extends State<PetParksMap> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;

    CurrentLocationProvider currentLocationProvider =
        Provider.of<CurrentLocationProvider>(context);

    return currentLocationProvider.currentLocation != null
        ? GoogleMap(
            initialCameraPosition: CameraPosition(
                target: LatLng(currentLocationProvider.currentLocation.latitude,
                    currentLocationProvider.currentLocation.longitude),
                zoom: 11.0),
            mapType: MapType.normal,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            padding: EdgeInsets.only(bottom: height * 0.34),
          )
        : SizedBox.shrink();
  }
}
