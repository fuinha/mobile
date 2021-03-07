// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;

import '../screens/discovery/discovery_screen.dart' as _i15;
import '../screens/discovery/pet_parks/pet_parks_screen.dart' as _i16;
import '../screens/health/health_screen.dart' as _i12;
import '../screens/health/reminders/reminders_screen.dart' as _i13;
import '../screens/health/vaccine_history/vaccine_history_screen.dart' as _i14;
import '../screens/home/events/addevent_screen.dart' as _i6;
import '../screens/home/events/events_screen.dart' as _i5;
import '../screens/home/home_screen.dart' as _i3;
import '../screens/root_screen.dart' as _i2;
import '../screens/safety/dashboard/lost_poster/create_lost_poster_screen.dart'
    as _i9;
import '../screens/safety/dashboard/owner_info/owner_info_screen.dart' as _i7;
import '../screens/safety/dashboard/pet_info/pet_info_screen.dart' as _i8;
import '../screens/safety/dashboard/safety_dashboard_screen.dart' as _i10;
import '../screens/safety/scans/scans_screen.dart' as _i4;
import '../screens/safety/statistics/statistics_screen.dart' as _i11;

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
    HealthTab.name: (entry) {
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
    UpcomingScreen.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i5.EventsScreen());
    },
    AddEventScreen.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i6.AddEventScreen());
    },
    OwnerInfoU.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i7.OwnerInfoScreen());
    },
    PetInfoU.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i8.PetInfoScreen());
    },
    CreateLostPosterU.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: _i9.CreateLostPosterScreen());
    },
    ScanScreenU.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i4.ScansScreen());
    },
    SafetyDashboardScreen.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: _i10.SafetyDashboardScreen());
    },
    OwnerInfoS.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i7.OwnerInfoScreen());
    },
    PetInfoS.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i8.PetInfoScreen());
    },
    CreateLostPosterS.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: _i9.CreateLostPosterScreen());
    },
    StatisticsScreen.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i11.StatisticsScreen());
    },
    ScanScreenS.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i4.ScansScreen());
    },
    HealthScreen.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i12.HealthScreen());
    },
    RemindersScreen.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i13.RemindersScreen());
    },
    VaccineHistoryScreen.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: _i14.VaccineHistoryScreen());
    },
    DiscoveryScreen.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i15.DiscoveryScreen());
    },
    PetParksScreen.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i16.PetParksScreen());
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
                              path: 'addEvent',
                              routeBuilder: (match) =>
                                  AddEventScreen.fromMatch(match))
                        ]),
                    _i1.RouteConfig<UpcomingScreen>(UpcomingScreen.name,
                        path: 'upcoming',
                        routeBuilder: (match) =>
                            UpcomingScreen.fromMatch(match),
                        children: [
                          _i1.RouteConfig<OwnerInfoU>(OwnerInfoU.name,
                              path: 'ownerInfo',
                              routeBuilder: (match) =>
                                  OwnerInfoU.fromMatch(match)),
                          _i1.RouteConfig<PetInfoU>(PetInfoU.name,
                              path: 'petInfo',
                              routeBuilder: (match) =>
                                  PetInfoU.fromMatch(match)),
                          _i1.RouteConfig<CreateLostPosterU>(
                              CreateLostPosterU.name,
                              path: 'createLostPoster',
                              routeBuilder: (match) =>
                                  CreateLostPosterU.fromMatch(match)),
                          _i1.RouteConfig<ScanScreenU>(ScanScreenU.name,
                              path: 'scanLocations',
                              routeBuilder: (match) =>
                                  ScanScreenU.fromMatch(match))
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
                    _i1.RouteConfig<OwnerInfoS>(OwnerInfoS.name,
                        path: 'ownerInfo',
                        routeBuilder: (match) => OwnerInfoS.fromMatch(match)),
                    _i1.RouteConfig<PetInfoS>(PetInfoS.name,
                        path: 'petInfo',
                        routeBuilder: (match) => PetInfoS.fromMatch(match)),
                    _i1.RouteConfig<CreateLostPosterS>(CreateLostPosterS.name,
                        path: 'createLostPoster',
                        routeBuilder: (match) =>
                            CreateLostPosterS.fromMatch(match)),
                    _i1.RouteConfig<StatisticsScreen>(StatisticsScreen.name,
                        path: 'statistics',
                        routeBuilder: (match) =>
                            StatisticsScreen.fromMatch(match)),
                    _i1.RouteConfig<ScanScreenS>(ScanScreenS.name,
                        path: 'scanLocations',
                        routeBuilder: (match) => ScanScreenS.fromMatch(match))
                  ]),
              _i1.RouteConfig<HealthTab>(HealthTab.name,
                  path: 'health',
                  routeBuilder: (match) => HealthTab.fromMatch(match),
                  children: [
                    _i1.RouteConfig<HealthScreen>(HealthScreen.name,
                        path: '',
                        routeBuilder: (match) => HealthScreen.fromMatch(match)),
                    _i1.RouteConfig<RemindersScreen>(RemindersScreen.name,
                        path: 'remindersScreen',
                        routeBuilder: (match) =>
                            RemindersScreen.fromMatch(match)),
                    _i1.RouteConfig<VaccineHistoryScreen>(
                        VaccineHistoryScreen.name,
                        path: 'vaccineHistory',
                        routeBuilder: (match) =>
                            VaccineHistoryScreen.fromMatch(match))
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

class HealthTab extends _i1.PageRouteInfo {
  const HealthTab({List<_i1.PageRouteInfo> children})
      : super(name, path: 'health', initialChildren: children);

  HealthTab.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'HealthTab';
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

class UpcomingScreen extends _i1.PageRouteInfo {
  const UpcomingScreen({List<_i1.PageRouteInfo> children})
      : super(name, path: 'upcoming', initialChildren: children);

  UpcomingScreen.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'UpcomingScreen';
}

class AddEventScreen extends _i1.PageRouteInfo {
  const AddEventScreen() : super(name, path: 'addEvent');

  AddEventScreen.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'AddEventScreen';
}

class OwnerInfoU extends _i1.PageRouteInfo {
  const OwnerInfoU() : super(name, path: 'ownerInfo');

  OwnerInfoU.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'OwnerInfoU';
}

class PetInfoU extends _i1.PageRouteInfo {
  const PetInfoU() : super(name, path: 'petInfo');

  PetInfoU.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'PetInfoU';
}

class CreateLostPosterU extends _i1.PageRouteInfo {
  const CreateLostPosterU() : super(name, path: 'createLostPoster');

  CreateLostPosterU.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'CreateLostPosterU';
}

class ScanScreenU extends _i1.PageRouteInfo {
  const ScanScreenU() : super(name, path: 'scanLocations');

  ScanScreenU.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'ScanScreenU';
}

class SafetyDashboardScreen extends _i1.PageRouteInfo {
  const SafetyDashboardScreen() : super(name, path: '');

  SafetyDashboardScreen.fromMatch(_i1.RouteMatch match)
      : super.fromMatch(match);

  static const String name = 'SafetyDashboardScreen';
}

class OwnerInfoS extends _i1.PageRouteInfo {
  const OwnerInfoS() : super(name, path: 'ownerInfo');

  OwnerInfoS.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'OwnerInfoS';
}

class PetInfoS extends _i1.PageRouteInfo {
  const PetInfoS() : super(name, path: 'petInfo');

  PetInfoS.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'PetInfoS';
}

class CreateLostPosterS extends _i1.PageRouteInfo {
  const CreateLostPosterS() : super(name, path: 'createLostPoster');

  CreateLostPosterS.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'CreateLostPosterS';
}

class StatisticsScreen extends _i1.PageRouteInfo {
  const StatisticsScreen() : super(name, path: 'statistics');

  StatisticsScreen.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'StatisticsScreen';
}

class ScanScreenS extends _i1.PageRouteInfo {
  const ScanScreenS() : super(name, path: 'scanLocations');

  ScanScreenS.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'ScanScreenS';
}

class HealthScreen extends _i1.PageRouteInfo {
  const HealthScreen() : super(name, path: '');

  HealthScreen.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'HealthScreen';
}

class RemindersScreen extends _i1.PageRouteInfo {
  const RemindersScreen() : super(name, path: 'remindersScreen');

  RemindersScreen.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'RemindersScreen';
}

class VaccineHistoryScreen extends _i1.PageRouteInfo {
  const VaccineHistoryScreen() : super(name, path: 'vaccineHistory');

  VaccineHistoryScreen.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'VaccineHistoryScreen';
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
