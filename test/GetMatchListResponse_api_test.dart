// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:sample_match/logic/Data-Models/API/GetMatchListRequest.dart';
import 'package:sample_match/main.reflectable.dart';

void main() {
  initializeReflectable();
  test('Deserialize Match List', () {
    var decodedData = json.decode(sampleResponse);
    GetMatchListResponse response =
        GetMatchListResponse.fromJson(decodedData);

    expect(response.dates.length, 1);
    expect(response.dates[0].games.length, 1);
    expect(response.dates[0].games[0].teams.away.score, 4);
    expect(response.dates[0].games[0].teams.away.team.id, 146);
    expect(response.dates[0].games[0].teams.away.team.name, "Miami Marlins");
    
    
  });
}

const String sampleResponse = """
  {
  "copyright" : "Copyright 2020 MLB Advanced Media, L.P.  Use of any content on this page acknowledges agreement to the terms posted here http://gdx.mlb.com/components/copyright.txt",
  "totalItems" : 15,
  "totalEvents" : 0,
  "totalGames" : 15,
  "totalGamesInProgress" : 0,
  "dates" : [ {
    "date" : "2019-09-29",
    "totalItems" : 15,
    "totalEvents" : 0,
    "totalGames" : 15,
    "totalGamesInProgress" : 0,
    "games" : [ {
      "gamePk" : 567139,
      "link" : "/api/v1.1/game/567139/feed/live",
      "gameType" : "R",
      "season" : "2019",
      "gameDate" : "2019-09-29T19:05:00Z",
      "status" : {
        "abstractGameState" : "Final",
        "codedGameState" : "F",
        "detailedState" : "Final",
        "statusCode" : "F",
        "abstractGameCode" : "F"
      },
      "teams" : {
        "away" : {
          "leagueRecord" : {
            "wins" : 57,
            "losses" : 105,
            "pct" : ".352"
          },
          "score" : 4,
          "team" : {
            "id" : 146,
            "name" : "Miami Marlins",
            "link" : "/api/v1/teams/146"
          },
          "isWinner" : true,
          "splitSquad" : false,
          "seriesNumber" : 52
        },
        "home" : {
          "leagueRecord" : {
            "wins" : 81,
            "losses" : 81,
            "pct" : ".500"
          },
          "score" : 3,
          "team" : {
            "id" : 143,
            "name" : "Philadelphia Phillies",
            "link" : "/api/v1/teams/143"
          },
          "isWinner" : false,
          "splitSquad" : false,
          "seriesNumber" : 52
        }
      },
      "venue" : {
        "id" : 2681,
        "name" : "Citizens Bank Park",
        "link" : "/api/v1/venues/2681"
      },
      "content" : {
        "link" : "/api/v1/game/567139/content"
      },
      "isTie" : false,
      "gameNumber" : 1,
      "publicFacing" : true,
      "doubleHeader" : "N",
      "gamedayType" : "P",
      "tiebreaker" : "N",
      "calendarEventID" : "14-567139-2019-09-29",
      "seasonDisplay" : "2019",
      "dayNight" : "day",
      "scheduledInnings" : 9,
      "inningBreakLength" : 120,
      "gamesInSeries" : 3,
      "seriesGameNumber" : 3,
      "seriesDescription" : "Regular Season",
      "recordSource" : "S",
      "ifNecessary" : "N",
      "ifNecessaryDescription" : "Normal Game"
    } ],
    "events" : [ ]
  } ]
}
  """;
