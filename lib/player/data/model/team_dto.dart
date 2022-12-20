import 'package:json_annotation/json_annotation.dart';

part 'team_dto.g.dart';

@JsonSerializable()
class TeamDto {
  TeamDto({
    this.id,
    this.abbreviation,
    this.city,
    this.conference,
    this.division,
    this.fullName,
    this.name,
  });

  final int? id;
  final String? abbreviation;
  final String? city;
  final String? conference;
  final String? division;
  @JsonKey(name: "full_name")
  final String? fullName;
  final String? name;

  factory TeamDto.fromJson(Map<String, dynamic> json) {
    return _$TeamDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TeamDtoToJson(this);


}
