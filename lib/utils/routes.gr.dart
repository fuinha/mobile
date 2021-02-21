// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;

import '../screens/logging/events/events_screen.dart' as _i3;
import '../screens/logging/upcoming/upcoming_screen.dart' as _i4;
import '../screens/root_screen.dart' as _i2;
import '../screens/safety/dashboard/safety_dashboard_screen.dart' as _i6;
import '../screens/safety/scans/scans_screen.dart' as _i5;
import '../screens/safety/statistics/statistics_screen.dart' as _i7;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    RootScreen.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.RootScreen());
    },
    LogTab.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    SafetyTab.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    EventsScreen.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i3.EventsScreen());
    },
    UpcomingScreen.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i4.UpcomingScreen());
    },
    ScanScreenL.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i5.ScansScreen());
    },
    SafetyDashboardScreen.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: _i6.SafetyDashboardScreen());
    },
    StatisticsScreen.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i7.StatisticsScreen());
    },
    ScanScreenS.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i5.ScansScreen());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig<RootScreen>(RootScreen.name,
            path: '/',
            usesTabsRouter: true,
            routeBuilder: (match) => RootScreen.fromMatch(match),
            children: [
              _i1.RouteConfig('#redirect',
                  path: '', redirectTo: 'log', fullMatch: true),
              _i1.RouteConfig<LogTab>(LogTab.name,
                  path: 'log',
                  routeBuilder: (match) => LogTab.fromMatch(match),
                  children: [
                    _i1.RouteConfig<EventsScreen>(EventsScreen.name,
                        path: '',
                        routeBuilder: (match) => EventsScreen.fromMatch(match)),
                    _i1.RouteConfig<UpcomingScreen>(UpcomingScreen.name,
                        path: 'upcoming',
                        routeBuilder: (match) =>
                            UpcomingScreen.fromMatch(match)),
                    _i1.RouteConfig<ScanScreenL>(ScanScreenL.name,
                        path: 'scansL',
                        routeBuilder: (match) => ScanScreenL.fromMatch(match))
                  ]),
              _i1.RouteConfig<SafetyTab>(SafetyTab.name,
                  path: 'safety',
                  routeBuilder: (match) => SafetyTab.fromMatch(match),
                  children: [
                    _i1.RouteConfig<SafetyDashboardScreen>(
                        SafetyDashboardScreen.name,
                        path: '',
                        routeBuilder: (match) =>
                            SafetyDashboardScreen.fromMatch(match)),
                    _i1.RouteConfig<StatisticsScreen>(StatisticsScreen.name,
                        path: 'statistics',
                        routeBuilder: (match) =>
                            StatisticsScreen.fromMatch(match)),
                    _i1.RouteConfig<ScanScreenS>(ScanScreenS.name,
                        path: 'scansS',
                        routeBuilder: (match) => ScanScreenS.fromMatch(match))
                  ])
            ])
      ];
}

class RootScreen extends _i1.PageRouteInfo {
  const RootScreen({List<_i1.PageRouteInfo> children})
      : super(name, path: '/', initialChildren: children);

  RootScreen.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'RootScreen';
}

class LogTab extends _i1.PageRouteInfo {
  const LogTab({List<_i1.PageRouteInfo> children})
      : super(name, path: 'log', initialChildren: children);

  LogTab.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'LogTab';
}

class SafetyTab extends _i1.PageRouteInfo {
  const SafetyTab({List<_i1.PageRouteInfo> children})
      : super(name, path: 'safety', initialChildren: children);

  SafetyTab.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'SafetyTab';
}

class EventsScreen extends _i1.PageRouteInfo {
  const EventsScreen() : super(name, path: '');

  EventsScreen.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'EventsScreen';
}

class UpcomingScreen extends _i1.PageRouteInfo {
  const UpcomingScreen() : super(name, path: 'upcoming');

  UpcomingScreen.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'UpcomingScreen';
}

class ScanScreenL extends _i1.PageRouteInfo {
  const ScanScreenL() : super(name, path: 'scansL');

  ScanScreenL.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'ScanScreenL';
}

class SafetyDashboardScreen extends _i1.PageRouteInfo {
  const SafetyDashboardScreen() : super(name, path: '');

  SafetyDashboardScreen.fromMatch(_i1.RouteMatch match)
      : super.fromMatch(match);

  static const String name = 'SafetyDashboardScreen';
}

class StatisticsScreen extends _i1.PageRouteInfo {
  const StatisticsScreen() : super(name, path: 'statistics');

  StatisticsScreen.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'StatisticsScreen';
}

class ScanScreenS extends _i1.PageRouteInfo {
  const ScanScreenS() : super(name, path: 'scansS');

  ScanScreenS.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'ScanScreenS';
}
