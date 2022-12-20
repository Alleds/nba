import 'package:json_annotation/json_annotation.dart';

part 'player_dto.g.dart';

@JsonSerializable()
class PlayerDto {
  const PlayerDto({
    this.id,
    this.firstName,
    this.secondName,
  });

  final int? id;
  @JsonKey(name: "first_name")
  final String? firstName;
  @JsonKey(name: "last_name")
  final String? secondName;

  factory PlayerDto.fromJson(Map<String, dynamic> json) {
    return _$PlayerDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PlayerDtoToJson(this);
}
