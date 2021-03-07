import 'package:flutter/material.dart';
import 'package:petcode_app/providers/pet_parks_provider.dart';
import 'package:petcode_app/screens/discovery/pet_parks/pet_park_info.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:provider/provider.dart';

class PetParksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;

    PetParksProvider petParksProvider = Provider.of<PetParksProvider>(context);

    List<Widget> petParks = <Widget>[];

    for (int i = 0; i < petParksProvider.petParks.length; i++) {
      petParks.add(PetParkInfo(
        shownPark: petParksProvider.petParks[i],
      ));
      petParks.add(
        SizedBox(
          height: height * 0.02,
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView(
        shrinkWrap: true,
        children: petParks,
      ),
    );
  }
}
