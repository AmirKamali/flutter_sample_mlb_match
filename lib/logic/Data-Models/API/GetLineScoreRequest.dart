import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
import 'package:sample_match/logic/Abstracts/NetworkingProvider.dart';
part 'GetLineScoreRequest.g.dart';

class GetLineScoreRequest extends WebRequest<GetLineScoreResponse> {
  final int gameId;
  GetLineScoreRequest({this.gameId});

  void prepareRequest() {
    url = "https://statsapi.mlb.com/api/v1/game/$gameId/linescore";
    method = HTTPMethod.httpGet;
    body = null;
  }

  @override
  GetLineScoreResponse castDataToResponse(dynamic jsonData) {
    return GetLineScoreResponse.fromJson(jsonData);
  }

  @override
  Error isRequestValid() {
    return null;
  }
}

// Response
@JsonSerializable()
class GetLineScoreResponse extends BaseResponseType {
  List<LineScoreInnings> innings = [];
  LineScoreTeam teams;

  GetLineScoreResponse();
  factory GetLineScoreResponse.fromJson(Map<String, dynamic> json) =>
      _$GetLineScoreResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GetLineScoreResponseToJson(this);

  @override
  Error isResponseValid() {
    return null;
  }
}

@JsonSerializable()
class LineScoreTeam {
  TeamInning home;
  TeamInning away;

  LineScoreTeam();
  factory LineScoreTeam.fromJson(Map<String, dynamic> json) =>
      _$LineScoreTeamFromJson(json);
  Map<String, dynamic> toJson() => _$LineScoreTeamToJson(this);
}

@JsonSerializable()
class TeamInning {
  int runs = 0;
  int hits = 0;
  int errors = 0;
  int leftOnBase = 0;

  TeamInning();
  factory TeamInning.fromJson(Map<String, dynamic> json) =>
      _$TeamInningFromJson(json);
  Map<String, dynamic> toJson() => _$TeamInningToJson(this);
}

@JsonSerializable()
class LineScoreInnings {
  @JsonKey(name:"num")
  int number = 0;
  TeamInning home;
  TeamInning away;

  LineScoreInnings();
  factory LineScoreInnings.fromJson(Map<String, dynamic> json) =>
      _$LineScoreInningsFromJson(json);
  Map<String, dynamic> toJson() => _$LineScoreInningsToJson(this);
}

