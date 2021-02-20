import 'package:flutter/material.dart';
import 'package:petcode_app/utils/style_constants.dart';

class SlidingPanelHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = StyleConstants.height;
    double width = StyleConstants.width;

    return Center(
      child: Container(
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 150.0),
                child: Divider(
                  thickness: 3.0,
                  color: StyleConstants.darkGrey,
                ),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text('View Scan Locations',
                  style: StyleConstants.regTextLarge
                      .copyWith(color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
