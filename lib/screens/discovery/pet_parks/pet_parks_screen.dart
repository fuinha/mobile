import 'package:flutter/material.dart';
import 'package:petcode_app/providers/pet_parks_map_provider.dart';
import 'package:petcode_app/providers/pet_parks_panel_provider.dart';
import 'package:petcode_app/screens/discovery/pet_parks/pet_park_info.dart';
import 'package:petcode_app/screens/discovery/pet_parks/pet_parks_map.dart';
import 'package:petcode_app/screens/discovery/pet_parks/pet_parks_sliding_panel.dart';
import 'package:petcode_app/screens/discovery/pet_parks/search_area_widget.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/widgets/back_app_bar.dart';
import 'package:petcode_app/widgets/sliding_panel_header.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PetParksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;

    PetParksPanelProvider panelProvider =
        Provider.of<PetParksPanelProvider>(context);

    PetParksMapProvider mapProvider = Provider.of<PetParksMapProvider>(context);

    return Scaffold(
      appBar: BackAppBar(
        name: 'Pet Parks',
      ),
      body: SlidingUpPanel(
        controller: panelProvider.panelController,
        minHeight: height * 0.11,
        maxHeight: height * 0.5,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25.0),
          topLeft: Radius.circular(25.0),
        ),
        header: SlidingPanelHeader(
          name: 'Nearby Pet Parks',
        ),
        body: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
              child: PetParksMap(),
            ),
            mapProvider.mapMoved ? SearchAreaWidget() : SizedBox.shrink(),
            mapProvider.selectedPark != null
                ? Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: height * 0.25),
                      child: PetParkInfo(
                        shownPark: mapProvider.selectedPark,
                      ),
                    ),
                  )
                : SizedBox.shrink(),
          ],
        ),
        panel: PetParksSlidingPanel(),
      ),
    );
  }
}
