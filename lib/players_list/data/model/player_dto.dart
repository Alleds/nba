import 'package:json_annotation/json_annotation.dart';

part 'player_dto.g.dart';

@JsonSerializable()
class PlayerDto {
  const PlayerDto({
    this.firstName,
    this.secondName,
  });

  final String? firstName;
  final String? secondName;

  factory PlayerDto.fromJson(Map<String, dynamic> json) {
    return _$PlayerDtoFromJson(json);
  }
}
