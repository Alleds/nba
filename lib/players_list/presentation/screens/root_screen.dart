import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nba/routes/app_router.gr.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        PlayersListScreenRoute(),
        GamesScreenRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Players',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_basketball),
              label: 'Games',
            ),
          ],
        );
      },
    );
  }
}
