import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nba/player/data/model/detailed_player_dto.dart';
import 'package:nba/player/domain/model/detailed_player_state.dart';
import 'package:nba/player/domain/repository/detailed_player_repository.dart';

class DetailedPlayerCubit extends Cubit<DetailedPlayerState> {
  DetailedPlayerCubit(
    this.repository,
  ) : super(
          const DetailedPlayerState(),
        );

  final DetailedPlayerRepository repository;

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

  void _onFieldUpdated(AsyncSnapshot<DetailedPlayerDto> field) {
    emit(
      state.copyWith(field: field),
    );
  }
}
