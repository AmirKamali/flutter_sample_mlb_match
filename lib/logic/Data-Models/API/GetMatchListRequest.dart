import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
import 'package:sample_match/logic/Abstracts/NetworkingProvider.dart';
part 'GetMatchListRequest.g.dart';

class GetMatchListRequest extends WebRequest<GetMatchListResponse> {
  String date;
  GetMatchListRequest({this.date = "09/29/2019"});

  void prepareRequest() {
    url = "https://statsapi.mlb.com/api/v1/schedule/?sportId=1&date=$date";
    method = HTTPMethod.httpGet;
    body = null;
  }

  @override
  GetMatchListResponse castDataToResponse(dynamic jsonData) {
    return GetMatchListResponse.fromJson(jsonData);
  }

  @override
  Error isRequestValid() {
    return null;
  }
}

// Response
@JsonSerializable()
class GetMatchListResponse extends BaseResponseType {
  List<GameDate> dates = [];

  GetMatchListResponse();
  factory GetMatchListResponse.fromJson(Map<String, dynamic> json) =>
      _$GetMatchListResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GetMatchListResponseToJson(this);

  @override
  Error isResponseValid() {
    return null;
  }
}

@JsonSerializable()
class GameDate {
  @JsonKey(name: "games")
  List<Game> games;

  GameDate();
  factory GameDate.fromJson(Map<String, dynamic> json) =>
      _$GameDateFromJson(json);
  Map<String, dynamic> toJson() => _$GameDateToJson(this);
}

@JsonSerializable()
class Game {
  int gamePk;
  GameTeams teams;
  GameStatus status;

  Game();
  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
  Map<String, dynamic> toJson() => _$GameToJson(this);
}
@JsonSerializable()
class GameStatus {
  String abstractGameState;

  GameStatus();
  factory GameStatus.fromJson(Map<String, dynamic> json) =>
      _$GameStatusFromJson(json);
  Map<String, dynamic> toJson() => _$GameStatusToJson(this);
}
@JsonSerializable()
class GameTeams {
  TeamScore away;
  TeamScore home;

  GameTeams();
  factory GameTeams.fromJson(Map<String, dynamic> json) =>
      _$GameTeamsFromJson(json);
  Map<String, dynamic> toJson() => _$GameTeamsToJson(this);
}



@JsonSerializable()
class TeamScore {
  int score;
  Team team;
  Stats teamStats;
  Map<String,PlayerInfo> players;
  List<int> batters;
  List<int> pitchers;

  TeamScore();
  factory TeamScore.fromJson(Map<String, dynamic> json) =>
      _$TeamScoreFromJson(json);
  Map<String, dynamic> toJson() => _$TeamScoreToJson(this);
}

@JsonSerializable()
class PlayerInfo {
  Person person;
  Stats stats;
  String battingOrder;

  PlayerInfo();
  factory PlayerInfo.fromJson(Map<String, dynamic> json) =>
      _$PlayerInfoFromJson(json);
  Map<String, dynamic> toJson() => _$PlayerInfoToJson(this);
}

@JsonSerializable()
class Person {
  String fullName;

    Person();
  factory Person.fromJson(Map<String, dynamic> json) =>
      _$PersonFromJson(json);
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}

@JsonSerializable()
class Team {
  int id;
  String name;

  Team();
  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
  Map<String, dynamic> toJson() => _$TeamToJson(this);
}

@JsonSerializable()
class Stats {
  BattingPitchingActivity batting;
  BattingPitchingActivity pitching;

    Stats();
  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);
  Map<String, dynamic> toJson() => _$StatsToJson(this);
}

@JsonSerializable()
class BattingPitchingActivity {
  String inningsPitched;
  int runs ;
  int doubles ;
  int triples ;
  int strikeOuts ;
  int hits ;
  int atBats ;
  int rbi ;


    BattingPitchingActivity();
  factory BattingPitchingActivity.fromJson(Map<String, dynamic> json) => _$BattingPitchingActivityFromJson(json);
  Map<String, dynamic> toJson() => _$BattingPitchingActivityToJson(this);
}
