import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:petcode_app/screens/safety/scans/recent_scan.dart';
import 'package:petcode_app/utils/style_constants.dart';

class ScansList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;

    List<Widget> scans = <Widget>[];
    for (int i = 0; i < 5; i++) {
      scans.add(listItemWidget(context));
      scans.add(
        SizedBox(
          height: height * 0.02,
        ),
      );
    }
    return Container(
      child: ListView(
        shrinkWrap: true,
        children: scans,
      ),
    );
  }

  Widget listItemWidget(BuildContext context) {
    return GestureDetector(
      onTap: () async {},
      child: RecentScan(),
    );
  }
}
