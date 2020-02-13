import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
import 'package:sample_match/logic/Abstracts/NetworkingProvider.dart';
import 'package:sample_match/logic/Data-Models/API/GetMatchListRequest.dart';
part 'GetBatterPitchersRequest.g.dart';

class GetBatterPitchersRequest extends WebRequest<GetBatterPitchersResponse> {
  final int gameId;
  GetBatterPitchersRequest({this.gameId});

  void prepareRequest() {
    url =
        "https://statsapi.mlb.com/api/v1/game/$gameId/boxscore?fields=teams,record,wins,loss%20es,players,fullName,position,name,type,abbreviation,stats,batting,doubles,triples,homeR%20uns,strikeOuts,fielding,assists,errors,putOuts,pitching,runs,atBats,hits,rbi,inningsPitched,%20strikeOuts";
    method = HTTPMethod.httpGet;
    body = null;
  }

  @override
  GetBatterPitchersResponse castDataToResponse(dynamic jsonData) {
    return GetBatterPitchersResponse.fromJson(jsonData);
  }

  @override
  Error isRequestValid() {
    return null;
  }
}

// Response
@JsonSerializable()
class GetBatterPitchersResponse extends BaseResponseType {
  GameTeams teams;

  GetBatterPitchersResponse();
  factory GetBatterPitchersResponse.fromJson(Map<String, dynamic> json) =>
      _$GetBatterPitchersResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GetBatterPitchersResponseToJson(this);

  @override
  Error isResponseValid() {
    return null;
  }
}
