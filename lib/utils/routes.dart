import 'package:auto_route/auto_route.dart';
import 'package:petcode_app/screens/health/health_screen.dart';
import 'package:petcode_app/screens/home/events/addevent_screen.dart';
import 'package:petcode_app/screens/home/events/events_screen.dart';
import 'package:petcode_app/screens/home/home_screen.dart';
import 'package:petcode_app/screens/home/upcoming/upcoming_screen.dart';
import 'package:petcode_app/screens/root_screen.dart';
import 'package:petcode_app/screens/safety/dashboard/safety_dashboard_screen.dart';
import 'package:petcode_app/screens/safety/scans/scans_screen.dart';
import 'package:petcode_app/screens/safety/statistics/statistics_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/', page: RootScreen, usesTabsRouter: true, children: [
      RedirectRoute(path: '', redirectTo: 'log'),
      AutoRoute(
        path: 'home',
        page: EmptyRouterPage,
        name: 'HomeTab',
        children: [
          AutoRoute(path: '', page: HomeScreen),
          AutoRoute(path: 'scans', page: ScansScreen, name: 'ScanScreenL'),
          AutoRoute(
            path: 'events',
            page: EventsScreen,
            name: 'EventsScreen',
            children: [
              AutoRoute(
                  path: 'addevent',
                  page: AddEventScreen,
                  name: 'AddEventScreen'),
            ],
          ),
        ],
      ),
      AutoRoute(
        path: 'safety',
        page: EmptyRouterPage,
        name: 'SafetyTab',
        children: [
          AutoRoute(path: '', page: SafetyDashboardScreen),
          AutoRoute(path: 'statistics', page: StatisticsScreen),
          AutoRoute(path: 'scans', page: ScansScreen, name: 'ScanScreenS'),
        ],
      ),
      AutoRoute(
        path: 'health',
        page: EmptyRouterPage,
        name: 'HealthTab',
        children: [
          AutoRoute(path: '', page: HealthScreen),
        ],
      ),
    ]),
  ],
)
class $AppRouter {}
