import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:petcode_app/utils/style_constants.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: height * 0.15,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Container(
            height: 1000.0,
            color: Colors.blue,

          ),
          bottom: TabBar(
            unselectedLabelColor: StyleConstants.grey,
            labelColor: StyleConstants.pcBlue,
            indicatorColor: StyleConstants.pcBlue,
            indicatorPadding: EdgeInsets.symmetric(horizontal: width * 0.1),
            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Events', style: StyleConstants.regTextLarge),
                    SizedBox(width: width * 0.03,),
                    FaIcon(FontAwesomeIcons.paw,),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Upcoming', style: StyleConstants.regTextLarge),
                    SizedBox(width: width * 0.03,),
                    FaIcon(FontAwesomeIcons.calendar,),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('Events'),
            ),
            Center(
              child: Text('Upcoming'),
            )
          ],
        )
      ),
    );
  }
}
