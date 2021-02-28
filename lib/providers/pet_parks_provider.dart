import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:petcode_app/models/PetPark.dart';
import 'package:petcode_app/providers/provider_state.dart';
import 'package:petcode_app/services/pet_parks_service.dart';

class PetParksProvider extends ChangeNotifier {
  PetParksService _petParksService;

  List<PetPark> _petParks;
  ProviderState _providerState = ProviderState.Busy;

  List<PetPark> get petParks => _petParks;
  ProviderState get providerState => _providerState;

  setUpProvider() {
    _petParksService = new PetParksService();
  }

  Future<void> getNearbyParks(LatLng location, double zoom) async {
    if (providerState != ProviderState.Busy) {
      _providerState = ProviderState.Busy;
      notifyListeners();
    }
    _petParks = await _petParksService.getNearbyParks(location, zoom);
    _providerState = ProviderState.Idle;
    notifyListeners();
    return;
  }

  clear() {
    _petParks = null;
    _petParksService = null;
  }
}
