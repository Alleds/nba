import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nba/players_list/domain/model/players_list_state.dart';
import 'package:nba/players_list/domain/repository/players_list_repository.dart';

import '../../data/model/players_list_dto.dart';

class PlayersListCubit extends Cubit<PlayersListState> {
  PlayersListCubit(this.repository)
      : super(
          const PlayersListState(),
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

  void _onFieldUpdated(AsyncSnapshot<Iterable<PlayersListDto>> field) {
    emit(
      state.copyWith(field: field),
    );
  }
}
