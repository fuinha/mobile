import 'package:auto_route/auto_route.dart';
import 'package:petcode_app/screens/discovery_screen.dart';
import 'package:petcode_app/screens/health/health_screen.dart';
import 'package:petcode_app/screens/health/reminders/reminders_screen.dart';
import 'package:petcode_app/screens/health/vaccine_history/vaccine_history_screen.dart';
import 'package:petcode_app/screens/home/events/addevent_screen.dart';
import 'package:petcode_app/screens/home/events/events_screen.dart';
import 'package:petcode_app/screens/home/home_screen.dart';
import 'package:petcode_app/screens/home/upcoming/upcoming_screen.dart';
import 'package:petcode_app/screens/root_screen.dart';
import 'package:petcode_app/screens/safety/dashboard/lost_poster/create_lost_poster_screen.dart';
import 'package:petcode_app/screens/safety/dashboard/owner_info/owner_info_screen.dart';
import 'package:petcode_app/screens/safety/dashboard/pet_info/pet_info_screen.dart';
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
                  path: 'addEvent',
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
          AutoRoute(path: 'ownerInfo', page: OwnerInfoScreen, name: 'OwnerInfoS'),
          AutoRoute(path: 'petInfo', page: PetInfoScreen, name: 'PetInfoS'),
          AutoRoute(path: 'createLostPoster', page: CreateLostPosterScreen, name: 'CreateLostPosterS'),
          AutoRoute(path: 'statistics', page: StatisticsScreen),
          AutoRoute(path: 'scanLocations', page: ScansScreen, name: 'ScanScreenS'),
        ],
      ),
      AutoRoute(
        path: 'health',
        page: EmptyRouterPage,
        name: 'HealthTab',
        children: [
          AutoRoute(path: '', page: HealthScreen),
          AutoRoute(path: 'remindersScreen', page: RemindersScreen),
          AutoRoute(path: 'vaccineHistory', page: VaccineHistoryScreen),

        ],
      ),
      AutoRoute(
        path: 'discovery',
        page: EmptyRouterPage,
        name: 'DiscoveryTab',
        children: [
          AutoRoute(path: '', page: DiscoveryScreen),

        ],
      ),
    ]),
  ],
)
class $AppRouter {}
