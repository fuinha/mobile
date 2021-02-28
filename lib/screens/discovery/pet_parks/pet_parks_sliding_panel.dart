import 'package:flutter/material.dart';
import 'package:petcode_app/screens/discovery/pet_parks/pet_parks_list.dart';
import 'package:petcode_app/utils/style_constants.dart';

class PetParksSlidingPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;

    return Column(
      children: [
        SizedBox(
          height: height * 0.08,
        ),
        Container(
          height: height * 0.42,
          child: Padding(
            padding: EdgeInsets.only(
              top: 10.0,
            ),
            child: PetParksList(),
          ),
        ),
      ],
    );
  }
}
