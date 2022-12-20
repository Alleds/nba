// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../players_list/presentation/screens/games_screen.dart' as _i3;
import '../players_list/presentation/screens/players_list_screen.dart' as _i2;
import '../players_list/presentation/screens/root_screen.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    RootScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.RootScreen(),
      );
    },
    PlayersListScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.PlayersListScreen(),
      );
    },
    GamesScreenRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.GamesScreen(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          RootScreenRoute.name,
          path: '/',
          children: [
            _i4.RouteConfig(
              PlayersListScreenRoute.name,
              path: 'players-list-screen',
              parent: RootScreenRoute.name,
            ),
            _i4.RouteConfig(
              GamesScreenRoute.name,
              path: 'games-screen',
              parent: RootScreenRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.RootScreen]
class RootScreenRoute extends _i4.PageRouteInfo<void> {
  const RootScreenRoute({List<_i4.PageRouteInfo>? children})
      : super(
          RootScreenRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'RootScreenRoute';
}

/// generated route for
/// [_i2.PlayersListScreen]
class PlayersListScreenRoute extends _i4.PageRouteInfo<void> {
  const PlayersListScreenRoute()
      : super(
          PlayersListScreenRoute.name,
          path: 'players-list-screen',
        );

  static const String name = 'PlayersListScreenRoute';
}

/// generated route for
/// [_i3.GamesScreen]
class GamesScreenRoute extends _i4.PageRouteInfo<void> {
  const GamesScreenRoute()
      : super(
          GamesScreenRoute.name,
          path: 'games-screen',
        );

  static const String name = 'GamesScreenRoute';
}
