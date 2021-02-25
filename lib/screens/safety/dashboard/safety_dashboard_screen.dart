import 'package:flutter/material.dart';
import 'package:petcode_app/utils/style_constants.dart';
import 'package:petcode_app/widgets/quick_links/quick_links_widget.dart';

class SafetyDashboardScreen extends StatefulWidget {
  @override
  _SafetyDashboardScreenState createState() => _SafetyDashboardScreenState();
}

class _SafetyDashboardScreenState extends State<SafetyDashboardScreen> {

  double height = StyleConstants.height;
  double width = StyleConstants.width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height * 0.12,
        backgroundColor: Colors.white,
        titleSpacing: 0.0,
        centerTitle: true,
        title: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: width,
                height: height * 0.12,
                child: Image.asset('assets/images/pawprintbackground.png',
                    fit: BoxFit.cover),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: width,
                height: height * 0.12,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Summer', style: StyleConstants.boldTitleText.copyWith(color: StyleConstants.pcBlue),),
                    Icon(Icons.keyboard_arrow_down, color: StyleConstants.pcBlue, size: 30.0,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Safety Dashboard Screen'),
            QuickLinksWidget(),
          ],
        ),
      ),
    );
  }
}
