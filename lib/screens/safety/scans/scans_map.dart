import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ScansMap extends StatefulWidget {
  @override
  _ScansMapState createState() => _ScansMapState();
}

class _ScansMapState extends State<ScansMap> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(target: LatLng(37, 37), zoom: 10.0),
      mapType: MapType.normal,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
    );
  }
}
