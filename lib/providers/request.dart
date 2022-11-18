import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:async';

import 'package:nba/di/service_locator.dart';
import 'package:nba/dio_container.dart';

class Player {
  final first_name;
  final last_name;
  Player(this.first_name, this.last_name);
}

class RequestPlayers with ChangeNotifier {
  List<Player> _players = [];

  Future<void> request() async {
    // const url = 'https://free-nba.p.rapidapi.com/players?page=0&per_page=25';
    // var dio = Dio();

    // dio.options.headers.addAll(
    //   {
    //     'X-RapidAPI-Key': '4bdb42fc8bmsh0517fa4ab58fa4dp18fef3jsn22de2d4a74dd',
    //     'X-RapidAPI-Host': 'free-nba.p.rapidapi.com'
    //   },
    // );
    // final response = await dio.get(url);
    final List<Player> loadedPlayers = [];
    var dio = getIt<DioProvider>().dio;
    final response = await dio.get('players?page=0&per_page=25');
    final data = response.data;
    final List extractedData = data['data'] as List;
    extractedData.forEach(
      (element) {
        //print('${element['first_name']} ${element['last_name']}');
        loadedPlayers.add(
          Player(
            element['first_name'],
            element['last_name'],
          ),
        );
      },
    );
    _players = loadedPlayers;
    notifyListeners();
  }

  List<Player> get players {
    return [..._players];
  }
}
