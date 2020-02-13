// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetBatterPitchersRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetBatterPitchersResponse _$GetBatterPitchersResponseFromJson(
    Map<String, dynamic> json) {
  return GetBatterPitchersResponse()
    ..teams = json['teams'] == null
        ? null
        : GameTeams.fromJson(json['teams'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetBatterPitchersResponseToJson(
        GetBatterPitchersResponse instance) =>
    <String, dynamic>{
      'teams': instance.teams,
    };
