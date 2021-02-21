import 'package:geolocator/geolocator.dart';

class CurrentLocationService {
  Future<String> getLocationPermissions() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return 'Location services are disabled';
    } else {
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.deniedForever) {
        return 'Location permissions are permanently denied, we cannot request permissions';
      } else if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission != LocationPermission.whileInUse) {
          return 'Location permissions are denied';
        }
      } else {
        return '';
      }
    }
  }

  Future<Position> getCurrentLocation() async {
    Position currentLocation;
    try {
      currentLocation = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
      print(currentLocation);
      return currentLocation;
    } catch (error) {
      print(error);
    }
    return currentLocation;
  }
}
