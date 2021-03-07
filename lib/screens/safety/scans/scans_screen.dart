import 'package:flutter/material.dart';
import 'package:petcode_app/screens/safety/scans/scans_map.dart';
import 'package:petcode_app/screens/safety/scans/scans_sliding_panel.dart';
import 'package:petcode_app/widgets/sliding_panel_header.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/widgets/back_app_bar.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ScansScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;

    return Scaffold(
      appBar: BackAppBar(
        name: 'Scan Locations',
      ),
      body: SlidingUpPanel(
        minHeight: height * 0.11,
        maxHeight: height * 0.5,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0)),
        header: SlidingPanelHeader(name: 'View Scan Locations',),
        body: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0)),
            child: ScansMap()),
        panel: ScansSlidingPanel(),
      ),
    );
  }
}
