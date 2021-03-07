import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:petcode_app/screens/home/events/events_screen.dart';
import 'package:petcode_app/screens/home/upcoming/upcoming_screen.dart';
import 'package:petcode_app/utils/style_constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            titleSpacing: 0.0,
            toolbarHeight: height * 0.15,
            backgroundColor: Colors.white,
            //centerTitle: true,
            title: Container(
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      width: width,
                      child: Column(
                        children: [
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: height * 0.045,
                                  child: Image.asset(
                                    'assets/images/petcode_logo_main.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                IconButton(
                                    icon: Icon(Icons.menu), onPressed: null)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: width,
                      height: height * 0.1,
                      child: Image.asset('assets/images/pawprintbackground.png',
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
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
                      SizedBox(
                        width: width * 0.03,
                      ),
                      FaIcon(
                        FontAwesomeIcons.paw,
                      ),
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Upcoming', style: StyleConstants.regTextLarge),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      FaIcon(
                        FontAwesomeIcons.calendar,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              EventsScreen(),
              UpcomingScreen(),
            ],
          )),
    );
  }
}
