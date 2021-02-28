import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
      currentIndex: tabsRouter.activeIndex,
      onTap: (int index) {
        tabsRouter.setActiveIndex(index);
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.shield), label: 'Safety'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Discovery'),
      ],
    );
  }
}
