import 'package:json_annotation/json_annotation.dart';
import 'package:nba/player/data/model/team_dto.dart';

part 'detailed_player_dto.g.dart';

@JsonSerializable()
class DetailedPlayerDto {
  DetailedPlayerDto({
    this.firstName,
    this.lastName,
    this.heightFeet,
    this.heightInches,
    this.position,
    this.weightPounds,
    this.team,
  });

  @JsonKey(name: "first_name")
  final String? firstName;
  @JsonKey(name: "last_name")
  final String? lastName;
  @JsonKey(name: "height_feet")
  final int? heightFeet;
  @JsonKey(name: "height_inches")
  final int? heightInches;
  final String? position;
  @JsonKey(name: "weight_pounds")
  final int? weightPounds;
  final TeamDto? team;

  factory DetailedPlayerDto.fromJson(Map<String, dynamic> json) {
    return _$DetailedPlayerDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DetailedPlayerDtoToJson(this);
}
