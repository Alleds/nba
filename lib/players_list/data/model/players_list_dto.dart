import 'package:json_annotation/json_annotation.dart';

part 'players_list_dto.g.dart';

@JsonSerializable()
class PlayersListDto {
  const PlayersListDto({
    this.id,
    this.firstName,
    this.secondName,
  });
  final int? id;
  @JsonKey(name: "first_name")
  final String? firstName;
  @JsonKey(name: "last_name")
  final String? secondName;

  factory PlayersListDto.fromJson(Map<String, dynamic> json) {
    return _$PlayersListDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PlayersListDtoToJson(this);
}
