import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nba/player/data/model/player_dto.dart';
import 'package:nba/player/domain/model/player_state.dart';
import 'package:nba/player/domain/repository/player_repository.dart';

class PlayerCubit extends Cubit<PlayerState> {
  PlayerCubit(this.repository)
      : super(
          const PlayerState(),
        );

  final PlayerRepository repository;

  Future<void> fetchPerson(int id) {
    _onFieldUpdated(
      const AsyncSnapshot.waiting(),
    );
    return repository.fetchPerson(id: id).then(
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

  void _onFieldUpdated(AsyncSnapshot<PlayerDto> field) {
    emit(
      state.copyWith(field: field),
    );
  }
}
