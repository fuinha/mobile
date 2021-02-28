import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:petcode_app/utils/style_constants.dart';

class HomeAppBar extends StatelessWidget {

  @override
  Size get preferredSize => Size.fromHeight(StyleConstants.height * 0.12);

  double height = StyleConstants.height;
  double width = StyleConstants.width;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: height * 0.15,
      backgroundColor: Colors.white,
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
                    Row(
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
    );
  }

  @override
  Widget get child => Container();
}
