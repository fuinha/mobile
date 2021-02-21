import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapService {
  Set<Marker> createMarkers(
      List<BitmapDescriptor> bitmapDescriptors, BuildContext context) {
    List<Marker> allMarkers = <Marker>[];

    for (int i = 0; i < 5; i++) {
      allMarkers.add(
        new Marker(
            markerId: MarkerId(Random.secure().nextInt(10000).toString()),
            position: LatLng(Random.secure().nextInt(180).toDouble(),
                Random.secure().nextInt(180).toDouble()),
            icon: bitmapDescriptors[
                Random.secure().nextInt(bitmapDescriptors.length)],
            infoWindow: InfoWindow(),
            onTap: () {}),
      );
    }
    print(allMarkers);
    return allMarkers.toSet();
  }
}
