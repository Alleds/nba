// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamDto _$TeamDtoFromJson(Map<String, dynamic> json) => TeamDto(
      id: json['id'] as int?,
      abbreviation: json['abbreviation'] as String?,
      city: json['city'] as String?,
      conference: json['conference'] as String?,
      division: json['division'] as String?,
      fullName: json['full_name'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$TeamDtoToJson(TeamDto instance) => <String, dynamic>{
      'id': instance.id,
      'abbreviation': instance.abbreviation,
      'city': instance.city,
      'conference': instance.conference,
      'division': instance.division,
      'full_name': instance.fullName,
      'name': instance.name,
    };
