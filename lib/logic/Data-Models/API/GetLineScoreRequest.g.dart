// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetLineScoreRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetLineScoreResponse _$GetLineScoreResponseFromJson(Map<String, dynamic> json) {
  return GetLineScoreResponse()
    ..innings = (json['innings'] as List)
        ?.map((e) => e == null
            ? null
            : LineScoreInnings.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..teams = json['teams'] == null
        ? null
        : LineScoreTeam.fromJson(json['teams'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetLineScoreResponseToJson(
        GetLineScoreResponse instance) =>
    <String, dynamic>{
      'innings': instance.innings,
      'teams': instance.teams,
    };

LineScoreTeam _$LineScoreTeamFromJson(Map<String, dynamic> json) {
  return LineScoreTeam()
    ..home = json['home'] == null
        ? null
        : TeamInning.fromJson(json['home'] as Map<String, dynamic>)
    ..away = json['away'] == null
        ? null
        : TeamInning.fromJson(json['away'] as Map<String, dynamic>);
}

Map<String, dynamic> _$LineScoreTeamToJson(LineScoreTeam instance) =>
    <String, dynamic>{
      'home': instance.home,
      'away': instance.away,
    };

TeamInning _$TeamInningFromJson(Map<String, dynamic> json) {
  return TeamInning()
    ..runs = json['runs'] as int
    ..hits = json['hits'] as int
    ..errors = json['errors'] as int
    ..leftOnBase = json['leftOnBase'] as int;
}

Map<String, dynamic> _$TeamInningToJson(TeamInning instance) =>
    <String, dynamic>{
      'runs': instance.runs,
      'hits': instance.hits,
      'errors': instance.errors,
      'leftOnBase': instance.leftOnBase,
    };

LineScoreInnings _$LineScoreInningsFromJson(Map<String, dynamic> json) {
  return LineScoreInnings()
    ..number = json['num'] as int
    ..home = json['home'] == null
        ? null
        : TeamInning.fromJson(json['home'] as Map<String, dynamic>)
    ..away = json['away'] == null
        ? null
        : TeamInning.fromJson(json['away'] as Map<String, dynamic>);
}

Map<String, dynamic> _$LineScoreInningsToJson(LineScoreInnings instance) =>
    <String, dynamic>{
      'num': instance.number,
      'home': instance.home,
      'away': instance.away,
    };
