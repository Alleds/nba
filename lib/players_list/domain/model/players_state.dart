import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nba/players_list/data/model/player_dto.dart';

part 'players_state.freezed.dart';

@freezed
class PlayersState with _$PlayersState {
  const factory PlayersState({
    AsyncSnapshot<Iterable<PlayerDto>>? field,
  }) = _PlayersState;
}
