// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'players_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayersListDto _$PlayersListDtoFromJson(Map<String, dynamic> json) =>
    PlayersListDto(
      id: json['id'] as int?,
      firstName: json['first_name'] as String?,
      secondName: json['last_name'] as String?,
    );

Map<String, dynamic> _$PlayersListDtoToJson(PlayersListDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.secondName,
    };
