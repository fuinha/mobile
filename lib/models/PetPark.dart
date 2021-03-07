import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:petcode_app/models/PlacePhoto.dart';

class PetPark {
  String name;
  String address;
  LatLng location;
  List<PlacePhoto> placePhotos;

  PetPark({this.name, this.address, this.location, this.placePhotos});
}