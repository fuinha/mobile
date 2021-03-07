import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:petcode_app/providers/pet_parks_map_provider.dart';
import 'package:petcode_app/providers/pet_parks_provider.dart';
import 'package:petcode_app/providers/provider_state.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:provider/provider.dart';

class SearchAreaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;

    PetParksProvider petParksProvider =
        Provider.of<PetParksProvider>(context);
    PetParksMapProvider petParksMapProvider =
        Provider.of<PetParksMapProvider>(context, listen: false);

    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.02,
          ),
          GestureDetector(
            onTap: () async {
              await petParksProvider.getNearbyParks(
                  LatLng(petParksMapProvider.cameraPosition.target.latitude,
                      petParksMapProvider.cameraPosition.target.longitude),
                  petParksMapProvider.cameraPosition.zoom);
              petParksMapProvider.setMoved(false);
            },
            child: Container(
              height: 40.0,
              width: 125.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Center(
                child: petParksProvider.providerState == ProviderState.Idle
                    ? Text(
                        'Search this Area',
                        style: StyleConstants.regSubtitleText
                            .copyWith(color: StyleConstants.pcBlue),
                      )
                    : AspectRatio(
                        aspectRatio: 1.0,
                        child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircularProgressIndicator(
                              strokeWidth: 2.0,
                            )),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
