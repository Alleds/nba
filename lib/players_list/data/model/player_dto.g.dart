// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerDto _$PlayerDtoFromJson(Map<String, dynamic> json) => PlayerDto(
      id: json['id'] as int?,
      firstName: json['first_name'] as String?,
      secondName: json['last_name'] as String?,
    );

Map<String, dynamic> _$PlayerDtoToJson(PlayerDto instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.secondName,
    };
