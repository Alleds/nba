import 'package:auto_route/auto_route.dart';
import 'package:nba/players_list/presentation/screens/root_screen.dart';
import '../players_list/presentation/screens/players_list_screen.dart';
import '../players_list/presentation/screens/games_screen.dart';

@MaterialAutoRouter(
  routes: [
    AutoRoute(
      initial: true,
      page: RootScreen,
      children: [
        AutoRoute(
          page: PlayersListScreen,
        ),
        AutoRoute(
          page: GamesScreen,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
