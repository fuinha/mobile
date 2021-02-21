import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:petcode_app/providers/current_location_provider.dart';
import 'package:petcode_app/providers/scans_map_provider.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:provider/provider.dart';

class ScansMap extends StatefulWidget {
  @override
  _ScansMapState createState() => _ScansMapState();
}

class _ScansMapState extends State<ScansMap> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;

    CurrentLocationProvider currentLocationProvider =
        Provider.of<CurrentLocationProvider>(context);

    ScansMapProvider scansMapProvider = Provider.of<ScansMapProvider>(context);

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
            padding: EdgeInsets.only(bottom: height * 0.27),
            markers: scansMapProvider.markersSet()
                ? scansMapProvider.getMarkers(context)
                : null,
          )
        : currentLocationProvider.errorString != null &&
                currentLocationProvider.errorString.isNotEmpty
            ? Padding(
                padding: EdgeInsets.only(top: height * 0.1),
                child: Text(
                  currentLocationProvider.errorString,
                  textAlign: TextAlign.center,
                ),
              )
            : SizedBox.shrink();
  }
}
