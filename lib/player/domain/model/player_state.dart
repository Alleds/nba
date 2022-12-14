import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nba/player/data/model/player_dto.dart';

part 'player_state.freezed.dart';

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState({
    AsyncSnapshot<PlayerDto>? field,
  }) = _PlayerState;
}
