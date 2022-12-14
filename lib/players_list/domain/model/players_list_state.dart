import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nba/players_list/data/model/players_list_dto.dart';

part 'players_list_state.freezed.dart';

@freezed
class PlayersListState with _$PlayersListState {
  const factory PlayersListState({
    AsyncSnapshot<Iterable<PlayersListDto>>? field,
  }) = _PlayersListState;
}
