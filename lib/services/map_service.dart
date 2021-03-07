import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:petcode_app/models/PetPark.dart';
import 'package:petcode_app/providers/pet_parks_map_provider.dart';
import 'package:petcode_app/providers/pet_parks_panel_provider.dart';
import 'package:provider/provider.dart';

class MapService {
  Set<Marker> createScansMarkers(
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
    return allMarkers.toSet();
  }

  Set<Marker> createPetParksMarkers(BitmapDescriptor bitmapDescriptor,
      BuildContext context, List<PetPark> parks) {
    List<Marker> allMarkers = <Marker>[];
    for (int i = 0; i < parks.length; i++) {
      allMarkers.add(
        new Marker(
          icon: bitmapDescriptor,
          markerId: MarkerId(parks[i].name + i.toString() + 'ID'),
          position: parks[i].location,
          onTap: () async {
            PetParksMapProvider petParksMapProvider =
                Provider.of<PetParksMapProvider>(context, listen: false);
            petParksMapProvider.selectPark(parks[i]);

            PetParksPanelProvider petParksPanelProvider =
                Provider.of<PetParksPanelProvider>(context, listen: false);
            petParksPanelProvider.hidePanel();
          },
        ),
      );
    }
    return allMarkers.toSet();
  }
}
