import 'package:json_annotation/json_annotation.dart';

part 'player_dto.g.dart';

@JsonSerializable()
class PlayerDto {
  PlayerDto(
      {this.firstName,
      this.lastName,
      this.heightFeet,
      this.heightInches,
      this.position,
      this.weightPounds,
      this.team});
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
  final Map<String, dynamic>? team;

  factory PlayerDto.fromJson(Map<String, dynamic> json) {
    return _$PlayerDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PlayerDtoToJson(this);
}
