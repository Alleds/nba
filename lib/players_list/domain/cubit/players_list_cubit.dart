import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nba/players_list/domain/model/players_list_state.dart';
import 'package:nba/players_list/domain/repository/players_list_repository.dart';

import '../../data/model/player_dto.dart';

class PlayersListStore extends Cubit<PlayersListState> {
  PlayersListStore(this.repository)
      : super(
          const PlayersListState(),
        );
  final int page = 1;

  final PlayersListRepository repository;

  Future<void> fetchPlayers() {
    _onFieldUpdated(
      const AsyncSnapshot.waiting(),
    );
    return repository.fetchPlayers(page: page, count: 20).then(
      (value) {
        _onFieldUpdated(
          AsyncSnapshot.withData(ConnectionState.done, value),
        );
      },
    ).catchError(
      (error) {
        _onFieldUpdated(
          AsyncSnapshot.withError(ConnectionState.done, error),
        );
      },
    );
  }

  void _onFieldUpdated(AsyncSnapshot<Iterable<PlayerDto>> field) {
    emit(
      state.copyWith(field: field),
    );
  }
}
