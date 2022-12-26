import 'package:flutter/material.dart';
import 'package:nba/player/presentation/themes/app_colors.dart';
import 'package:nba/players_list/presentation/screens/games_screen.dart';
import 'package:nba/players_list/presentation/screens/players_list_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _screens = <Widget>[
    PlayersListScreen(),
    GamesScreen(),
  ];

  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Players',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_basketball),
            label: 'Games',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.mainColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
