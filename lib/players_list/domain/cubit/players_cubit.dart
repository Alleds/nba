import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nba/players_list/domain/model/player_state.dart';
import 'package:nba/players_list/domain/repository/players_list_repository.dart';

import '../../data/model/player_dto.dart';

class PlayersCubit extends Cubit<PlayerState> {
  PlayersCubit(this.repository)
      : super(
          const PlayerState(),
        );

  final PlayersListRepository repository;

  Future<void> fetchPlayers() {
    _onFieldUpdated(
      const AsyncSnapshot.waiting(),
    );
    return repository.fetchPlayers().then(
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
