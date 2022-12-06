import 'package:flutter/material.dart';
import 'dart:async';

import 'package:nba/di/service_locator.dart';
import 'package:nba/dio_container.dart';

class Player {
  final String firstName;
  final String lastName;
  Player({required this.firstName, required this.lastName});
}

class PlayersProvider with ChangeNotifier {
  List<Player> _players = [];

  Future<void> request() async {
    final List<Player> loadedPlayers = [];
    var dio = getIt<DioProvider>().dio;
    final response = await dio.get('players?page=0&per_page=25');
    final data = response.data;
    final List extractedData = data['data'] as List;
    for (var element in extractedData) {
      loadedPlayers.add(
        Player(
          firstName: element['first_name'],
          lastName: element['last_name'],
        ),
      );
    }
    _players = loadedPlayers;
    notifyListeners();
  }

  List<Player> get players {
    return [..._players];
  }
}
