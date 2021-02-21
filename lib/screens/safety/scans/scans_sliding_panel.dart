import 'package:flutter/material.dart';
import 'package:petcode_app/screens/safety/scans/scans_list.dart';
import 'package:petcode_app/utils/style_constants.dart';

class ScansSlidingPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
      ),
      child: Column(
        children: [
          SizedBox(
            height: height * 0.08,
          ),
          Container(
            height: height * 0.42,
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: ScansList(),
            ),
          ),
        ],
      ),
    );
  }
}
