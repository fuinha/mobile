import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:petcode_app/utils/custom_icons/petcode_icons.dart';
import 'package:petcode_app/utils/routes.gr.dart';
import 'package:petcode_app/utils/style_constants.dart';

class RootScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool loggedIn = true;

    StyleConstants().init(context);

    return loggedIn
        ? AutoTabsRouter(
            routes: [
              HomeTab(),
              SafetyTab(),
              HealthTab(),
              DiscoveryTab(),
            ],
            builder: (context, child, animation) {
              var tabsRouter = context.tabsRouter;

              return Scaffold(
                  bottomNavigationBar: buildBottomNav(tabsRouter), body: child);
            },
          )
        : Scaffold(
            body: Center(
              child: Text('Root Screen'),
            ),
          );
  }

  BottomNavigationBar buildBottomNav(TabsRouter tabsRouter) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: StyleConstants.pcBlue,
      currentIndex: tabsRouter.activeIndex,
      showUnselectedLabels: true,
      unselectedItemColor: StyleConstants.darkGrey,

      onTap: (int index) {
        tabsRouter.setActiveIndex(index);
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined,), label: 'Home',),
        BottomNavigationBarItem(icon: Icon(PetCodeIcons.safety, ), label: 'Safety'),
        BottomNavigationBarItem(icon: Icon(PetCodeIcons.health), label: 'Health'),
        BottomNavigationBarItem(icon: Icon(Icons.search,), label: 'Discovery'),
      ],
    );
  }
}
