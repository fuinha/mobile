import 'package:auto_route/auto_route.dart';
import 'package:petcode_app/screens/logging/events/events_screen.dart';
import 'package:petcode_app/screens/logging/upcoming/upcoming_screen.dart';
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
        name: 'LogTab',
        children: [
          AutoRoute(path: '', page: EventsScreen),
          AutoRoute(path: 'upcoming', page: UpcomingScreen),
          AutoRoute(path: 'scansL', page: ScansScreen, name: 'ScanScreenL'),
        ],
      ),
      AutoRoute(
        path: 'safety',
        page: EmptyRouterPage,
        name: 'SafetyTab',
        children: [
          AutoRoute(path: '', page: SafetyDashboardScreen),
          AutoRoute(path: 'statistics', page: StatisticsScreen),
          AutoRoute(path: 'scansS', page: ScansScreen, name: 'ScanScreenS'),
        ],
      ),
    ]),
  ],
)
class $AppRouter {}
