import 'package:flutter/material.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/widgets/quick_links/quick_links_widget.dart';
import 'package:petcode_app/widgets/upcoming_events_widget.dart';

class UpcomingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: StyleConstants.homePageGradientBackground,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.03,),
                Text('Quick Links', style: StyleConstants.boldTitleText,),
                SizedBox(height: height * 0.02,),
                QuickLinksWidget(),
                UpcomingEventsWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
