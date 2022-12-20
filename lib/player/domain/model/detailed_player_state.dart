import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nba/player/data/model/detailed_player_dto.dart';

part 'detailed_player_state.freezed.dart';

@freezed
class DetailedPlayerState with _$DetailedPlayerState {
  const factory DetailedPlayerState({
    AsyncSnapshot<DetailedPlayerDto>? field,
  }) = _DetailedPlayerState;
}
