import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:petcode_app/providers/current_location_provider.dart';
import 'package:petcode_app/providers/pet_parks_map_provider.dart';
import 'package:petcode_app/providers/pet_parks_panel_provider.dart';
import 'package:petcode_app/providers/pet_parks_provider.dart';
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

    PetParksMapProvider petParksMapProvider =
        Provider.of<PetParksMapProvider>(context);

    PetParksPanelProvider petParksPanelProvider =
        Provider.of<PetParksPanelProvider>(context, listen: false);

    if (petParksMapProvider.cameraPosition == null &&
        currentLocationProvider.currentLocation != null) {
      petParksMapProvider.setCameraPosition(
        CameraPosition(
            target: LatLng(currentLocationProvider.currentLocation.latitude,
                currentLocationProvider.currentLocation.longitude),
            zoom: 11.0),
      );
      Provider.of<PetParksProvider>(context).getNearbyParks(
          LatLng(currentLocationProvider.currentLocation.latitude,
              currentLocationProvider.currentLocation.longitude),
          11.0);
    }

    return petParksMapProvider.cameraPosition != null
        ? GoogleMap(
            initialCameraPosition: petParksMapProvider.cameraPosition,
            mapType: MapType.normal,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            padding:
                EdgeInsets.only(bottom: petParksMapProvider.mapBottomPadding),
            markers: petParksMapProvider.getMarkers(context),
            onCameraMove: (CameraPosition position) {
              petParksMapProvider.setCameraPosition(position);
            },
            onTap: (LatLng tappedPosition) {
              petParksMapProvider.selectPark(null);
              petParksPanelProvider.showPanel();
            },
          )
        : SizedBox.shrink();
  }
}
