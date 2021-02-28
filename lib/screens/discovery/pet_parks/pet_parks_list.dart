import 'package:flutter/material.dart';
import 'package:petcode_app/screens/discovery/pet_parks/pet_park_info.dart';
import 'package:petcode_app/utils/style_constants.dart';

class PetParksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;

    List<Widget> petParks = <Widget>[];

    for (int i = 0; i < 5; i++) {
      petParks.add(listItemWidget());
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

  Widget listItemWidget() {
    return GestureDetector(
      onTap: () {},
      child: PetParkInfo(),
    );
  }
}
