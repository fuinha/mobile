// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;

import '../screens/discovery/discovery_screen.dart' as _i9;
import '../screens/discovery/pet_parks/pet_parks_screen.dart' as _i10;
import '../screens/home/events/addevent_screen.dart' as _i6;
import '../screens/home/events/events_screen.dart' as _i5;
import '../screens/home/home_screen.dart' as _i3;
import '../screens/root_screen.dart' as _i2;
import '../screens/safety/dashboard/safety_dashboard_screen.dart' as _i7;
import '../screens/safety/scans/scans_screen.dart' as _i4;
import '../screens/safety/statistics/statistics_screen.dart' as _i8;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    RootScreen.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.RootScreen());
    },
    HomeTab.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    SafetyTab.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    DiscoveryTab.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    HomeScreen.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i3.HomeScreen());
    },
    ScanScreenL.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i4.ScansScreen());
    },
    EventsScreen.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i5.EventsScreen());
    },
    AddEventScreen.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i6.AddEventScreen());
    },
    SafetyDashboardScreen.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: _i7.SafetyDashboardScreen());
    },
    StatisticsScreen.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i8.StatisticsScreen());
    },
    ScanScreenS.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i4.ScansScreen());
    },
    DiscoveryScreen.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i9.DiscoveryScreen());
    },
    PetParksScreen.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i10.PetParksScreen());
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
              _i1.RouteConfig<HomeTab>(HomeTab.name,
                  path: 'home',
                  routeBuilder: (match) => HomeTab.fromMatch(match),
                  children: [
                    _i1.RouteConfig<HomeScreen>(HomeScreen.name,
                        path: '',
                        routeBuilder: (match) => HomeScreen.fromMatch(match)),
                    _i1.RouteConfig<ScanScreenL>(ScanScreenL.name,
                        path: 'scans',
                        routeBuilder: (match) => ScanScreenL.fromMatch(match)),
                    _i1.RouteConfig<EventsScreen>(EventsScreen.name,
                        path: 'events',
                        routeBuilder: (match) => EventsScreen.fromMatch(match),
                        children: [
                          _i1.RouteConfig<AddEventScreen>(AddEventScreen.name,
                              path: 'addevent',
                              routeBuilder: (match) =>
                                  AddEventScreen.fromMatch(match))
                        ])
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
                        path: 'scans',
                        routeBuilder: (match) => ScanScreenS.fromMatch(match))
                  ]),
              _i1.RouteConfig<DiscoveryTab>(DiscoveryTab.name,
                  path: 'discovery',
                  routeBuilder: (match) => DiscoveryTab.fromMatch(match),
                  children: [
                    _i1.RouteConfig<DiscoveryScreen>(DiscoveryScreen.name,
                        path: '',
                        routeBuilder: (match) =>
                            DiscoveryScreen.fromMatch(match)),
                    _i1.RouteConfig<PetParksScreen>(PetParksScreen.name,
                        path: 'petParks',
                        routeBuilder: (match) =>
                            PetParksScreen.fromMatch(match))
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

class HomeTab extends _i1.PageRouteInfo {
  const HomeTab({List<_i1.PageRouteInfo> children})
      : super(name, path: 'home', initialChildren: children);

  HomeTab.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'HomeTab';
}

class SafetyTab extends _i1.PageRouteInfo {
  const SafetyTab({List<_i1.PageRouteInfo> children})
      : super(name, path: 'safety', initialChildren: children);

  SafetyTab.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'SafetyTab';
}

class DiscoveryTab extends _i1.PageRouteInfo {
  const DiscoveryTab({List<_i1.PageRouteInfo> children})
      : super(name, path: 'discovery', initialChildren: children);

  DiscoveryTab.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'DiscoveryTab';
}

class HomeScreen extends _i1.PageRouteInfo {
  const HomeScreen() : super(name, path: '');

  HomeScreen.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'HomeScreen';
}

class ScanScreenL extends _i1.PageRouteInfo {
  const ScanScreenL() : super(name, path: 'scans');

  ScanScreenL.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'ScanScreenL';
}

class EventsScreen extends _i1.PageRouteInfo {
  const EventsScreen({List<_i1.PageRouteInfo> children})
      : super(name, path: 'events', initialChildren: children);

  EventsScreen.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'EventsScreen';
}

class AddEventScreen extends _i1.PageRouteInfo {
  const AddEventScreen() : super(name, path: 'addevent');

  AddEventScreen.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'AddEventScreen';
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
  const ScanScreenS() : super(name, path: 'scans');

  ScanScreenS.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'ScanScreenS';
}

class DiscoveryScreen extends _i1.PageRouteInfo {
  const DiscoveryScreen() : super(name, path: '');

  DiscoveryScreen.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'DiscoveryScreen';
}

class PetParksScreen extends _i1.PageRouteInfo {
  const PetParksScreen() : super(name, path: 'petParks');

  PetParksScreen.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'PetParksScreen';
}
