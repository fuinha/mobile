import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:petcode_app/services/current_location_service.dart';

class CurrentLocationProvider extends ChangeNotifier {
  Position _currentLocation;

  CurrentLocationService _currentLocationService;
  String _errorString;

  Position get currentLocation => _currentLocation;
  String get errorString => _errorString;

  CurrentLocationProvider() {
    _currentLocationService = new CurrentLocationService();
    setUp();
  }

  Future<void> setUp() async {
    await checkPermissions();
    if (_errorString == null || _errorString.isEmpty) {
      await getCurrentLocation();
    }
    else {
      notifyListeners();
    }
  }

  Future<void> checkPermissions() async {
    _errorString = await _currentLocationService.getLocationPermissions();
  }

  Future<void> getCurrentLocation() async {
    _currentLocation = await _currentLocationService.getCurrentLocation();
    notifyListeners();
  }

  void clear() {
    _currentLocation = null;
  }
}
