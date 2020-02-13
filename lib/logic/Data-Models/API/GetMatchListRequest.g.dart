// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetMatchListRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMatchListResponse _$GetMatchListResponseFromJson(Map<String, dynamic> json) {
  return GetMatchListResponse()
    ..dates = (json['dates'] as List)
        ?.map((e) =>
            e == null ? null : GameDate.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$GetMatchListResponseToJson(
        GetMatchListResponse instance) =>
    <String, dynamic>{
      'dates': instance.dates,
    };

GameDate _$GameDateFromJson(Map<String, dynamic> json) {
  return GameDate()
    ..games = (json['games'] as List)
        ?.map(
            (e) => e == null ? null : Game.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$GameDateToJson(GameDate instance) => <String, dynamic>{
      'games': instance.games,
    };

Game _$GameFromJson(Map<String, dynamic> json) {
  return Game()
    ..gamePk = json['gamePk'] as int
    ..teams = json['teams'] == null
        ? null
        : GameTeams.fromJson(json['teams'] as Map<String, dynamic>)
    ..status = json['status'] == null
        ? null
        : GameStatus.fromJson(json['status'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GameToJson(Game instance) => <String, dynamic>{
      'gamePk': instance.gamePk,
      'teams': instance.teams,
      'status': instance.status,
    };

GameStatus _$GameStatusFromJson(Map<String, dynamic> json) {
  return GameStatus()..abstractGameState = json['abstractGameState'] as String;
}

Map<String, dynamic> _$GameStatusToJson(GameStatus instance) =>
    <String, dynamic>{
      'abstractGameState': instance.abstractGameState,
    };

GameTeams _$GameTeamsFromJson(Map<String, dynamic> json) {
  return GameTeams()
    ..away = json['away'] == null
        ? null
        : TeamScore.fromJson(json['away'] as Map<String, dynamic>)
    ..home = json['home'] == null
        ? null
        : TeamScore.fromJson(json['home'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GameTeamsToJson(GameTeams instance) => <String, dynamic>{
      'away': instance.away,
      'home': instance.home,
    };

TeamScore _$TeamScoreFromJson(Map<String, dynamic> json) {
  return TeamScore()
    ..score = json['score'] as int
    ..team = json['team'] == null
        ? null
        : Team.fromJson(json['team'] as Map<String, dynamic>)
    ..teamStats = json['teamStats'] == null
        ? null
        : Stats.fromJson(json['teamStats'] as Map<String, dynamic>)
    ..players = (json['players'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k, e == null ? null : PlayerInfo.fromJson(e as Map<String, dynamic>)),
    )
    ..batters = (json['batters'] as List)?.map((e) => e as int)?.toList()
    ..pitchers = (json['pitchers'] as List)?.map((e) => e as int)?.toList();
}

Map<String, dynamic> _$TeamScoreToJson(TeamScore instance) => <String, dynamic>{
      'score': instance.score,
      'team': instance.team,
      'teamStats': instance.teamStats,
      'players': instance.players,
      'batters': instance.batters,
      'pitchers': instance.pitchers,
    };

PlayerInfo _$PlayerInfoFromJson(Map<String, dynamic> json) {
  return PlayerInfo()
    ..person = json['person'] == null
        ? null
        : Person.fromJson(json['person'] as Map<String, dynamic>)
    ..stats = json['stats'] == null
        ? null
        : Stats.fromJson(json['stats'] as Map<String, dynamic>)
    ..battingOrder = json['battingOrder'] as String;
}

Map<String, dynamic> _$PlayerInfoToJson(PlayerInfo instance) =>
    <String, dynamic>{
      'person': instance.person,
      'stats': instance.stats,
      'battingOrder': instance.battingOrder,
    };

Person _$PersonFromJson(Map<String, dynamic> json) {
  return Person()..fullName = json['fullName'] as String;
}

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
      'fullName': instance.fullName,
    };

Team _$TeamFromJson(Map<String, dynamic> json) {
  return Team()
    ..id = json['id'] as int
    ..name = json['name'] as String;
}

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Stats _$StatsFromJson(Map<String, dynamic> json) {
  return Stats()
    ..batting = json['batting'] == null
        ? null
        : BattingPitchingActivity.fromJson(
            json['batting'] as Map<String, dynamic>)
    ..pitching = json['pitching'] == null
        ? null
        : BattingPitchingActivity.fromJson(
            json['pitching'] as Map<String, dynamic>);
}

Map<String, dynamic> _$StatsToJson(Stats instance) => <String, dynamic>{
      'batting': instance.batting,
      'pitching': instance.pitching,
    };

BattingPitchingActivity _$BattingPitchingActivityFromJson(
    Map<String, dynamic> json) {
  return BattingPitchingActivity()
    ..inningsPitched = json['inningsPitched'] as String
    ..runs = json['runs'] as int
    ..doubles = json['doubles'] as int
    ..triples = json['triples'] as int
    ..strikeOuts = json['strikeOuts'] as int
    ..hits = json['hits'] as int
    ..atBats = json['atBats'] as int
    ..rbi = json['rbi'] as int;
}

Map<String, dynamic> _$BattingPitchingActivityToJson(
        BattingPitchingActivity instance) =>
    <String, dynamic>{
      'inningsPitched': instance.inningsPitched,
      'runs': instance.runs,
      'doubles': instance.doubles,
      'triples': instance.triples,
      'strikeOuts': instance.strikeOuts,
      'hits': instance.hits,
      'atBats': instance.atBats,
      'rbi': instance.rbi,
    };
