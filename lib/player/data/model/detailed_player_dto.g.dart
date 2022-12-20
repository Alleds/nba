// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_player_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailedPlayerDto _$DetailedPlayerDtoFromJson(Map<String, dynamic> json) =>
    DetailedPlayerDto(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      heightFeet: json['height_feet'] as int?,
      heightInches: json['height_inches'] as int?,
      position: json['position'] as String?,
      weightPounds: json['weight_pounds'] as int?,
      team: json['team'] == null
          ? null
          : TeamDto.fromJson(json['team'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DetailedPlayerDtoToJson(DetailedPlayerDto instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'height_feet': instance.heightFeet,
      'height_inches': instance.heightInches,
      'position': instance.position,
      'weight_pounds': instance.weightPounds,
      'team': instance.team,
    };
