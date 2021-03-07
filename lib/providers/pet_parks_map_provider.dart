import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:petcode_app/models/PetPark.dart';
import 'package:petcode_app/services/map_service.dart';
import 'package:petcode_app/utils/style_constants.dart';

class PetParksMapProvider extends ChangeNotifier {
  BitmapDescriptor _petParksPin;
  CameraPosition _cameraPosition;
  bool _mapMoved;
  double _mapBottomPadding;

  List<PetPark> _petParks;
  PetPark _selectedPark;

  MapService _mapService;
  double _height;

  CameraPosition get cameraPosition => _cameraPosition;
  double get mapBottomPadding => _mapBottomPadding;
  bool get mapMoved => _mapMoved;

  PetPark get selectedPark => _selectedPark;

  PetParksMapProvider() {
    _mapService = new MapService();
    _height = StyleConstants.height;
    _mapMoved = false;
    _mapBottomPadding = _height * 0.34;
    setUpPin();
  }

  void setUpPin() async {
    _petParksPin = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 5),
        'assets/icons/pet_parks_pin.png');
    notifyListeners();
  }

  void setCameraPosition(CameraPosition newPosition) {
    _cameraPosition = newPosition;
    _mapMoved = true;
    notifyListeners();
  }

  void setParks(List<PetPark> parks) {
    _petParks = parks;
  }

  void selectPark(PetPark park) {
    _selectedPark = park;
    _mapMoved = true;
    _mapBottomPadding = _height * 0.18;
    notifyListeners();
  }

  void setMoved(bool moved) {
    _mapMoved = moved;
    notifyListeners();
  }

  Set<Marker> getMarkers(BuildContext context) {
    if (_petParksPin != null && _petParks != null && _petParks.length > 0) {
      return _mapService.createPetParksMarkers(
          _petParksPin, context, _petParks);
    }
    return new Set();
  }
}
