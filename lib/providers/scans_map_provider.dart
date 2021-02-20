import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:petcode_app/services/image_marker_service.dart';
import 'package:petcode_app/services/map_service.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/utils/map_constants.dart';

class ScansMapProvider extends ChangeNotifier {
  MapService _mapService;
  ImageMarkerService _imageMarkerService;
  List<BitmapDescriptor> _bitmapDescriptors;

  ScansMapProvider() {
    _mapService = new MapService();
    _imageMarkerService = new ImageMarkerService();

    setImages([
      'https://firebasestorage.googleapis.com/v0/b/petcode-b1e6e.appspot.com/o/petProfilePictures%2Fbbbbbb?alt=media&token=9ea2bda1-bfda-49bb-8ff3-f2ac403b37af',
      'https://firebasestorage.googleapis.com/v0/b/petcode-b1e6e.appspot.com/o/petProfilePictures%2F156798?alt=media&token=d47a9a18-7c24-4658-849a-bcad6d7541fd'
    ]);
  }

  void setImages(List<String> urls) async {
    List<Future<BitmapDescriptor>> descriptors = <Future<BitmapDescriptor>>[];
    for (int i = 0; i < urls.length; i++) {
      descriptors.add(_imageMarkerService.getMarkerIcon(
          urls[i],
          Size(StyleConstants.width * 0.27, StyleConstants.width * 0.27),
          MapConstants.markerColors[i]));
    }
    _bitmapDescriptors = await Future.wait(descriptors);
    notifyListeners();
  }

  Set<Marker> getMarkers(BuildContext context) {
    return _mapService.createMarkers(_bitmapDescriptors, context);
  }

  bool markersSet() {
    //TODO: Check if scans is not empty
    return _bitmapDescriptors != null;
  }

  void clear() {
    _bitmapDescriptors = null;
  }
}
