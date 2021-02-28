import 'package:flutter/material.dart';
import 'package:petcode_app/screens/discovery/pet_parks/pet_parks_map.dart';
import 'package:petcode_app/screens/discovery/pet_parks/pet_parks_sliding_panel.dart';
import 'package:petcode_app/screens/discovery/pet_parks/pet_parks_sliding_panel_header.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/widgets/back_app_bar.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PetParksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;
    double width = StyleConstants.width;
    return Scaffold(
      appBar: BackAppBar(
        name: 'Pet Parks',
      ),
      body: SlidingUpPanel(
        minHeight: height * 0.11,
        maxHeight: height * 0.5,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25.0),
          topLeft: Radius.circular(25.0),
        ),
        header: PetParksSlidingPanelHeader(),
        body: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
          child: PetParksMap(),
        ),
        panel: PetParksSlidingPanel(),
      ),
    );
  }
}
