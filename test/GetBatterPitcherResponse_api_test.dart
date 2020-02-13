// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:sample_match/logic/Data-Models/API/GetBatterPitchersRequest.dart';
import 'package:sample_match/main.reflectable.dart';

void main() {
  initializeReflectable();
  test('Deserialize Match Details', () {
    var decodedData = json.decode(sampleResponse);
    GetBatterPitchersResponse response =
        GetBatterPitchersResponse.fromJson(decodedData);
    expect(response.teams, isNot(null));
    expect(response.teams.home, isNot(null));
    expect(response.teams.away, isNot(null));
    expect(response.teams.home.batters, isNotEmpty);
    expect(response.teams.home.pitchers, isNotEmpty);
    expect(response.teams.home.players.keys, isNotEmpty);
    expect(response.teams.home.teamStats, isNot(null));
  });
}

const String sampleResponse = """
  {
  "teams" : {
    "away" : {
      "team" : {
        "name" : "Miami Marlins",
        "abbreviation" : "MIA",
        "record" : {
          "wins" : 57
        }
      },
      "teamStats" : {
        "batting" : {
          "runs" : 4,
          "doubles" : 1,
          "triples" : 0,
          "strikeOuts" : 9,
          "hits" : 7,
          "atBats" : 33,
          "rbi" : 4
        },
        "pitching" : {
          "runs" : 3,
          "doubles" : 0,
          "triples" : 0,
          "strikeOuts" : 10,
          "hits" : 13,
          "atBats" : 40,
          "inningsPitched" : "9.0",
          "rbi" : 3
        },
        "fielding" : {
          "assists" : 6,
          "putOuts" : 27,
          "errors" : 1
        }
      },
      "players" : {
        "ID643265" : {
          "person" : {
            "fullName" : "Garrett Cooper"
          },
          "jerseyNumber" : "26",
          "position" : {
            "name" : "Outfielder",
            "type" : "Outfielder",
            "abbreviation" : "RF"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 146,
          "seasonStats" : {
            "batting" : {
              "runs" : 52,
              "doubles" : 16,
              "triples" : 1,
              "strikeOuts" : 110,
              "hits" : 107,
              "atBats" : 381,
              "rbi" : 50
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 41,
              "putOuts" : 502,
              "errors" : 3,
              "fielding" : ".995"
            }
          },
          "gameStatus" : { }
        },
        "ID592407" : {
          "person" : {
            "fullName" : "Bryan Holaday"
          },
          "jerseyNumber" : "28",
          "position" : {
            "name" : "Catcher",
            "type" : "Catcher",
            "abbreviation" : "C"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 3,
              "rbi" : 0
            },
            "pitching" : { },
            "fielding" : {
              "assists" : 0,
              "putOuts" : 10,
              "errors" : 0,
              "fielding" : ".000"
            }
          },
          "status" : { },
          "parentTeamId" : 146,
          "battingOrder" : "800",
          "seasonStats" : {
            "batting" : {
              "runs" : 12,
              "doubles" : 6,
              "triples" : 0,
              "strikeOuts" : 21,
              "hits" : 32,
              "atBats" : 115,
              "rbi" : 12
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 1,
              "inningsPitched" : "0.1",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 16,
              "putOuts" : 288,
              "errors" : 1,
              "fielding" : ".997"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Catcher",
            "type" : "Catcher",
            "abbreviation" : "C"
          } ]
        },
        "ID667498" : {
          "person" : {
            "fullName" : "Robert Dugger"
          },
          "jerseyNumber" : "64",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 146,
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 6,
              "hits" : 0,
              "atBats" : 11,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 26,
              "doubles" : 8,
              "triples" : 1,
              "strikeOuts" : 25,
              "hits" : 33,
              "atBats" : 130,
              "inningsPitched" : "34.1",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 2,
              "putOuts" : 1,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { }
        },
        "ID623912" : {
          "person" : {
            "fullName" : "Harold Ramirez"
          },
          "jerseyNumber" : "47",
          "position" : {
            "name" : "Outfielder",
            "type" : "Outfielder",
            "abbreviation" : "CF"
          },
          "stats" : {
            "batting" : {
              "runs" : 1,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 2,
              "atBats" : 4,
              "rbi" : 0
            },
            "pitching" : { },
            "fielding" : {
              "assists" : 0,
              "putOuts" : 5,
              "errors" : 0,
              "fielding" : ".000"
            }
          },
          "status" : { },
          "parentTeamId" : 146,
          "battingOrder" : "500",
          "seasonStats" : {
            "batting" : {
              "runs" : 54,
              "doubles" : 20,
              "triples" : 3,
              "strikeOuts" : 91,
              "hits" : 116,
              "atBats" : 421,
              "rbi" : 50
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 0,
              "putOuts" : 252,
              "errors" : 1,
              "fielding" : ".996"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Outfielder",
            "type" : "Outfielder",
            "abbreviation" : "CF"
          } ]
        },
        "ID645261" : {
          "person" : {
            "fullName" : "Sandy Alcantara"
          },
          "jerseyNumber" : "22",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 2,
              "hits" : 0,
              "atBats" : 2,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 1,
              "doubles" : 1,
              "triples" : 0,
              "strikeOuts" : 5,
              "hits" : 8,
              "atBats" : 26,
              "inningsPitched" : "6.0",
              "wins" : 1,
              "rbi" : 1
            },
            "fielding" : {
              "assists" : 1,
              "putOuts" : 1,
              "errors" : 0,
              "fielding" : ".000"
            }
          },
          "status" : { },
          "parentTeamId" : 146,
          "battingOrder" : "900",
          "seasonStats" : {
            "batting" : {
              "runs" : 2,
              "doubles" : 1,
              "triples" : 0,
              "strikeOuts" : 46,
              "hits" : 5,
              "atBats" : 58,
              "rbi" : 4
            },
            "pitching" : {
              "runs" : 94,
              "doubles" : 43,
              "triples" : 2,
              "strikeOuts" : 151,
              "hits" : 179,
              "atBats" : 717,
              "inningsPitched" : "197.1",
              "wins" : 6,
              "rbi" : 1
            },
            "fielding" : {
              "assists" : 20,
              "putOuts" : 10,
              "errors" : 4,
              "fielding" : ".882"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          } ]
        },
        "ID594027" : {
          "person" : {
            "fullName" : "Tayron Guerrero"
          },
          "jerseyNumber" : "56",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 146,
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 34,
              "doubles" : 8,
              "triples" : 0,
              "strikeOuts" : 43,
              "hits" : 42,
              "atBats" : 171,
              "inningsPitched" : "46.0",
              "wins" : 1,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 2,
              "putOuts" : 3,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { }
        },
        "ID516770" : {
          "person" : {
            "fullName" : "Starlin Castro"
          },
          "jerseyNumber" : "13",
          "position" : {
            "name" : "Third Base",
            "type" : "Infielder",
            "abbreviation" : "3B"
          },
          "stats" : {
            "batting" : {
              "runs" : 1,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 1,
              "atBats" : 2,
              "rbi" : 1
            },
            "pitching" : { },
            "fielding" : {
              "assists" : 1,
              "putOuts" : 1,
              "errors" : 0,
              "fielding" : ".000"
            }
          },
          "status" : { },
          "parentTeamId" : 146,
          "battingOrder" : "400",
          "seasonStats" : {
            "batting" : {
              "runs" : 68,
              "doubles" : 31,
              "triples" : 4,
              "strikeOuts" : 111,
              "hits" : 172,
              "atBats" : 636,
              "rbi" : 86
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 328,
              "putOuts" : 206,
              "errors" : 13,
              "fielding" : ".976"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Third Base",
            "type" : "Infielder",
            "abbreviation" : "3B"
          } ]
        },
        "ID621573" : {
          "person" : {
            "fullName" : "Austin Dean"
          },
          "jerseyNumber" : "44",
          "position" : {
            "name" : "Outfielder",
            "type" : "Outfielder",
            "abbreviation" : "RF"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 1,
              "hits" : 0,
              "atBats" : 3,
              "rbi" : 0
            },
            "pitching" : { },
            "fielding" : {
              "assists" : 0,
              "putOuts" : 0,
              "errors" : 0,
              "fielding" : ".000"
            }
          },
          "status" : { },
          "parentTeamId" : 146,
          "battingOrder" : "700",
          "seasonStats" : {
            "batting" : {
              "runs" : 17,
              "doubles" : 14,
              "triples" : 0,
              "strikeOuts" : 47,
              "hits" : 40,
              "atBats" : 178,
              "rbi" : 21
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 5,
              "putOuts" : 96,
              "errors" : 4,
              "fielding" : ".962"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Outfielder",
            "type" : "Outfielder",
            "abbreviation" : "RF"
          } ]
        },
        "ID570632" : {
          "person" : {
            "fullName" : "Jose Urena"
          },
          "jerseyNumber" : "62",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 146,
          "seasonStats" : {
            "batting" : {
              "runs" : 1,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 14,
              "hits" : 0,
              "atBats" : 19,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 53,
              "doubles" : 22,
              "triples" : 0,
              "strikeOuts" : 62,
              "hits" : 99,
              "atBats" : 338,
              "inningsPitched" : "84.2",
              "wins" : 4,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 8,
              "putOuts" : 11,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { }
        },
        "ID664918" : {
          "person" : {
            "fullName" : "Kyle Keller"
          },
          "jerseyNumber" : "72",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 146,
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 4,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 11,
              "hits" : 5,
              "atBats" : 36,
              "inningsPitched" : "10.2",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 0,
              "putOuts" : 0,
              "errors" : 0,
              "fielding" : ".000"
            }
          },
          "gameStatus" : { }
        },
        "ID606424" : {
          "person" : {
            "fullName" : "Jarlin Garcia"
          },
          "jerseyNumber" : "66",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 1,
              "inningsPitched" : "0.1",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 146,
          "battingOrder" : "201",
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 1,
              "hits" : 0,
              "atBats" : 1,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 17,
              "doubles" : 5,
              "triples" : 1,
              "strikeOuts" : 39,
              "hits" : 40,
              "atBats" : 184,
              "inningsPitched" : "50.2",
              "wins" : 4,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 9,
              "putOuts" : 1,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          } ]
        },
        "ID572383" : {
          "person" : {
            "fullName" : "Brian Moran"
          },
          "jerseyNumber" : "63",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 2,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 1,
              "hits" : 2,
              "atBats" : 3,
              "inningsPitched" : "0.1",
              "wins" : 0,
              "rbi" : 2
            },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 146,
          "battingOrder" : "901",
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 3,
              "doubles" : 1,
              "triples" : 1,
              "strikeOuts" : 10,
              "hits" : 6,
              "atBats" : 21,
              "inningsPitched" : "6.1",
              "wins" : 1,
              "rbi" : 2
            },
            "fielding" : {
              "assists" : 1,
              "putOuts" : 0,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          } ]
        },
        "ID605479" : {
          "person" : {
            "fullName" : "Josh D. Smith"
          },
          "jerseyNumber" : "68",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 146,
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 9,
              "doubles" : 4,
              "triples" : 1,
              "strikeOuts" : 14,
              "hits" : 11,
              "atBats" : 49,
              "inningsPitched" : "12.2",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 1,
              "putOuts" : 0,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { }
        },
        "ID543045" : {
          "person" : {
            "fullName" : "Adam Conley"
          },
          "jerseyNumber" : "61",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 146,
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 1,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 45,
              "doubles" : 17,
              "triples" : 3,
              "strikeOuts" : 53,
              "hits" : 76,
              "atBats" : 247,
              "inningsPitched" : "60.2",
              "wins" : 2,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 10,
              "putOuts" : 3,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { }
        },
        "ID542932" : {
          "person" : {
            "fullName" : "Jon Berti"
          },
          "jerseyNumber" : "55",
          "position" : {
            "name" : "Shortstop",
            "type" : "Infielder",
            "abbreviation" : "SS"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 1,
              "hits" : 1,
              "atBats" : 4,
              "rbi" : 0
            },
            "pitching" : { },
            "fielding" : {
              "assists" : 2,
              "putOuts" : 1,
              "errors" : 0,
              "fielding" : ".000"
            }
          },
          "status" : { },
          "parentTeamId" : 146,
          "battingOrder" : "100",
          "seasonStats" : {
            "batting" : {
              "runs" : 52,
              "doubles" : 14,
              "triples" : 1,
              "strikeOuts" : 73,
              "hits" : 70,
              "atBats" : 256,
              "rbi" : 24
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 93,
              "putOuts" : 93,
              "errors" : 3,
              "fielding" : ".984"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Shortstop",
            "type" : "Infielder",
            "abbreviation" : "SS"
          } ]
        },
        "ID621446" : {
          "person" : {
            "fullName" : "Lewis Brinson"
          },
          "jerseyNumber" : "9",
          "position" : {
            "name" : "Pinch Hitter",
            "type" : "Hitter",
            "abbreviation" : "PH"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 1,
              "rbi" : 0
            },
            "pitching" : { },
            "fielding" : {
              "assists" : 0,
              "putOuts" : 0,
              "errors" : 0,
              "fielding" : ".000"
            }
          },
          "status" : { },
          "parentTeamId" : 146,
          "battingOrder" : "903",
          "seasonStats" : {
            "batting" : {
              "runs" : 15,
              "doubles" : 9,
              "triples" : 1,
              "strikeOuts" : 74,
              "hits" : 39,
              "atBats" : 226,
              "rbi" : 15
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 5,
              "putOuts" : 157,
              "errors" : 5,
              "fielding" : ".970"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Pinch Hitter",
            "type" : "Hitter",
            "abbreviation" : "PH"
          } ]
        },
        "ID641755" : {
          "person" : {
            "fullName" : "Tyler Kinley"
          },
          "jerseyNumber" : "39",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 2,
              "hits" : 1,
              "atBats" : 3,
              "inningsPitched" : "0.2",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 146,
          "battingOrder" : "202",
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 1,
              "hits" : 0,
              "atBats" : 1,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 20,
              "doubles" : 7,
              "triples" : 0,
              "strikeOuts" : 46,
              "hits" : 43,
              "atBats" : 178,
              "inningsPitched" : "49.1",
              "wins" : 3,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 6,
              "putOuts" : 4,
              "errors" : 1,
              "fielding" : ".909"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          } ]
        },
        "ID592773" : {
          "person" : {
            "fullName" : "Ryne Stanek"
          },
          "jerseyNumber" : "35",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 1,
              "hits" : 0,
              "atBats" : 3,
              "inningsPitched" : "1.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 146,
          "battingOrder" : "904",
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 39,
              "doubles" : 13,
              "triples" : 1,
              "strikeOuts" : 89,
              "hits" : 61,
              "atBats" : 282,
              "inningsPitched" : "77.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 3,
              "putOuts" : 5,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          } ]
        },
        "ID642423" : {
          "person" : {
            "fullName" : "Magneuris Sierra"
          },
          "jerseyNumber" : "34",
          "position" : {
            "name" : "Outfielder",
            "type" : "Outfielder",
            "abbreviation" : "CF"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 146,
          "seasonStats" : {
            "batting" : {
              "runs" : 5,
              "doubles" : 1,
              "triples" : 1,
              "strikeOuts" : 7,
              "hits" : 14,
              "atBats" : 40,
              "rbi" : 1
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 2,
              "putOuts" : 23,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { }
        },
        "ID623168" : {
          "person" : {
            "fullName" : "Tyler Heineman"
          },
          "jerseyNumber" : "51",
          "position" : {
            "name" : "Catcher",
            "type" : "Catcher",
            "abbreviation" : "C"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 146,
          "seasonStats" : {
            "batting" : {
              "runs" : 1,
              "doubles" : 1,
              "triples" : 0,
              "strikeOuts" : 4,
              "hits" : 3,
              "atBats" : 11,
              "rbi" : 2
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 1,
              "putOuts" : 26,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { }
        },
        "ID622694" : {
          "person" : {
            "fullName" : "Elieser Hernandez"
          },
          "jerseyNumber" : "57",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 146,
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 10,
              "hits" : 1,
              "atBats" : 19,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 49,
              "doubles" : 18,
              "triples" : 2,
              "strikeOuts" : 85,
              "hits" : 76,
              "atBats" : 314,
              "inningsPitched" : "82.1",
              "wins" : 3,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 8,
              "putOuts" : 0,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { }
        },
        "ID641154" : {
          "person" : {
            "fullName" : "Pablo Lopez"
          },
          "jerseyNumber" : "49",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 146,
          "seasonStats" : {
            "batting" : {
              "runs" : 1,
              "doubles" : 2,
              "triples" : 0,
              "strikeOuts" : 19,
              "hits" : 6,
              "atBats" : 35,
              "rbi" : 3
            },
            "pitching" : {
              "runs" : 64,
              "doubles" : 23,
              "triples" : 3,
              "strikeOuts" : 95,
              "hits" : 111,
              "atBats" : 425,
              "inningsPitched" : "111.1",
              "wins" : 5,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 12,
              "putOuts" : 9,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { }
        },
        "ID456051" : {
          "person" : {
            "fullName" : "Hector Noesi"
          },
          "jerseyNumber" : "48",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 146,
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 3,
              "hits" : 1,
              "atBats" : 4,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 26,
              "doubles" : 6,
              "triples" : 3,
              "strikeOuts" : 24,
              "hits" : 30,
              "atBats" : 107,
              "inningsPitched" : "27.2",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 1,
              "putOuts" : 1,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { }
        },
        "ID445988" : {
          "person" : {
            "fullName" : "Martin Prado"
          },
          "jerseyNumber" : "14",
          "position" : {
            "name" : "Third Base",
            "type" : "Infielder",
            "abbreviation" : "3B"
          },
          "stats" : {
            "batting" : {
              "runs" : 1,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 3,
              "hits" : 1,
              "atBats" : 4,
              "rbi" : 1
            },
            "pitching" : { },
            "fielding" : {
              "assists" : 0,
              "putOuts" : 4,
              "errors" : 1,
              "fielding" : ".000"
            }
          },
          "status" : { },
          "parentTeamId" : 146,
          "battingOrder" : "200",
          "seasonStats" : {
            "batting" : {
              "runs" : 26,
              "doubles" : 9,
              "triples" : 0,
              "strikeOuts" : 41,
              "hits" : 57,
              "atBats" : 245,
              "rbi" : 15
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 43,
              "putOuts" : 253,
              "errors" : 3,
              "fielding" : ".990"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "First Base",
            "type" : "Infielder",
            "abbreviation" : "1B"
          }, {
            "name" : "Third Base",
            "type" : "Infielder",
            "abbreviation" : "3B"
          } ]
        },
        "ID500743" : {
          "person" : {
            "fullName" : "Miguel Rojas"
          },
          "jerseyNumber" : "19",
          "position" : {
            "name" : "Shortstop",
            "type" : "Infielder",
            "abbreviation" : "SS"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 146,
          "seasonStats" : {
            "batting" : {
              "runs" : 52,
              "doubles" : 29,
              "triples" : 1,
              "strikeOuts" : 62,
              "hits" : 137,
              "atBats" : 483,
              "rbi" : 46
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 289,
              "putOuts" : 191,
              "errors" : 11,
              "fielding" : ".978"
            }
          },
          "gameStatus" : { }
        },
        "ID656371" : {
          "person" : {
            "fullName" : "Isan Diaz"
          },
          "jerseyNumber" : "1",
          "position" : {
            "name" : "Second Base",
            "type" : "Infielder",
            "abbreviation" : "2B"
          },
          "stats" : {
            "batting" : {
              "runs" : 1,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 1,
              "hits" : 1,
              "atBats" : 4,
              "rbi" : 2
            },
            "pitching" : { },
            "fielding" : {
              "assists" : 1,
              "putOuts" : 1,
              "errors" : 0,
              "fielding" : ".000"
            }
          },
          "status" : { },
          "parentTeamId" : 146,
          "battingOrder" : "600",
          "seasonStats" : {
            "batting" : {
              "runs" : 17,
              "doubles" : 5,
              "triples" : 2,
              "strikeOuts" : 59,
              "hits" : 31,
              "atBats" : 179,
              "rbi" : 23
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 106,
              "putOuts" : 71,
              "errors" : 9,
              "fielding" : ".952"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Second Base",
            "type" : "Infielder",
            "abbreviation" : "2B"
          } ]
        },
        "ID592761" : {
          "person" : {
            "fullName" : "Caleb Smith"
          },
          "jerseyNumber" : "31",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 146,
          "seasonStats" : {
            "batting" : {
              "runs" : 2,
              "doubles" : 2,
              "triples" : 0,
              "strikeOuts" : 15,
              "hits" : 10,
              "atBats" : 43,
              "rbi" : 3
            },
            "pitching" : {
              "runs" : 82,
              "doubles" : 29,
              "triples" : 2,
              "strikeOuts" : 168,
              "hits" : 128,
              "atBats" : 573,
              "inningsPitched" : "153.1",
              "wins" : 10,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 12,
              "putOuts" : 7,
              "errors" : 2,
              "fielding" : ".905"
            }
          },
          "gameStatus" : { }
        },
        "ID657141" : {
          "person" : {
            "fullName" : "Jordan Yamamoto"
          },
          "jerseyNumber" : "68",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 146,
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 9,
              "hits" : 1,
              "atBats" : 21,
              "rbi" : 1
            },
            "pitching" : {
              "runs" : 42,
              "doubles" : 13,
              "triples" : 0,
              "strikeOuts" : 82,
              "hits" : 54,
              "atBats" : 282,
              "inningsPitched" : "78.2",
              "wins" : 4,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 7,
              "putOuts" : 5,
              "errors" : 1,
              "fielding" : ".923"
            }
          },
          "gameStatus" : { }
        },
        "ID595751" : {
          "person" : {
            "fullName" : "Jorge Alfaro"
          },
          "jerseyNumber" : "38",
          "position" : {
            "name" : "First Base",
            "type" : "Infielder",
            "abbreviation" : "1B"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "rbi" : 0
            },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 146,
          "battingOrder" : "905",
          "seasonStats" : {
            "batting" : {
              "runs" : 44,
              "doubles" : 14,
              "triples" : 1,
              "strikeOuts" : 154,
              "hits" : 113,
              "atBats" : 431,
              "rbi" : 57
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 55,
              "putOuts" : 930,
              "errors" : 11,
              "fielding" : ".989"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "First Base",
            "type" : "Infielder",
            "abbreviation" : "1B"
          } ]
        },
        "ID612672" : {
          "person" : {
            "fullName" : "Wei-Yin Chen"
          },
          "jerseyNumber" : "20",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 146,
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 4,
              "hits" : 0,
              "atBats" : 5,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 54,
              "doubles" : 20,
              "triples" : 2,
              "strikeOuts" : 63,
              "hits" : 87,
              "atBats" : 280,
              "inningsPitched" : "68.1",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 7,
              "putOuts" : 5,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { }
        },
        "ID434158" : {
          "person" : {
            "fullName" : "Curtis Granderson"
          },
          "jerseyNumber" : "21",
          "position" : {
            "name" : "Outfielder",
            "type" : "Outfielder",
            "abbreviation" : "LF"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 1,
              "hits" : 0,
              "atBats" : 4,
              "rbi" : 0
            },
            "pitching" : { },
            "fielding" : {
              "assists" : 0,
              "putOuts" : 3,
              "errors" : 0,
              "fielding" : ".000"
            }
          },
          "status" : { },
          "parentTeamId" : 146,
          "battingOrder" : "300",
          "seasonStats" : {
            "batting" : {
              "runs" : 44,
              "doubles" : 17,
              "triples" : 1,
              "strikeOuts" : 98,
              "hits" : 58,
              "atBats" : 317,
              "rbi" : 34
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 3,
              "putOuts" : 139,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Outfielder",
            "type" : "Outfielder",
            "abbreviation" : "LF"
          } ]
        },
        "ID435522" : {
          "person" : {
            "fullName" : "Neil Walker"
          },
          "jerseyNumber" : "18",
          "position" : {
            "name" : "Third Base",
            "type" : "Infielder",
            "abbreviation" : "3B"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 1,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 1,
              "atBats" : 2,
              "rbi" : 0
            },
            "pitching" : { },
            "fielding" : {
              "assists" : 1,
              "putOuts" : 1,
              "errors" : 0,
              "fielding" : ".000"
            }
          },
          "status" : { },
          "parentTeamId" : 146,
          "battingOrder" : "402",
          "seasonStats" : {
            "batting" : {
              "runs" : 37,
              "doubles" : 19,
              "triples" : 1,
              "strikeOuts" : 77,
              "hits" : 88,
              "atBats" : 337,
              "rbi" : 38
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 55,
              "putOuts" : 457,
              "errors" : 3,
              "fielding" : ".994"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "First Base",
            "type" : "Infielder",
            "abbreviation" : "1B"
          }, {
            "name" : "Third Base",
            "type" : "Infielder",
            "abbreviation" : "3B"
          } ]
        },
        "ID650671" : {
          "person" : {
            "fullName" : "Jose Quijada"
          },
          "jerseyNumber" : "74",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 146,
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 1,
              "hits" : 0,
              "atBats" : 1,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 20,
              "doubles" : 6,
              "triples" : 1,
              "strikeOuts" : 44,
              "hits" : 27,
              "atBats" : 113,
              "inningsPitched" : "29.2",
              "wins" : 2,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 2,
              "putOuts" : 1,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { }
        },
        "ID656257" : {
          "person" : {
            "fullName" : "Jeff Brigham"
          },
          "jerseyNumber" : "43",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 1,
              "hits" : 2,
              "atBats" : 4,
              "inningsPitched" : "0.2",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 146,
          "battingOrder" : "902",
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 1,
              "hits" : 0,
              "atBats" : 1,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 20,
              "doubles" : 3,
              "triples" : 1,
              "strikeOuts" : 39,
              "hits" : 36,
              "atBats" : 141,
              "inningsPitched" : "38.1",
              "wins" : 3,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 3,
              "putOuts" : 0,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          } ]
        }
      },
      "batters" : [ 542932, 445988, 606424, 641755, 434158, 516770, 435522, 623912, 656371, 621573, 592407, 645261, 572383, 656257, 621446, 592773, 595751 ],
      "pitchers" : [ 645261, 572383, 656257, 592773, 606424, 641755 ],
      "bench" : [ 643265, 623168, 500743, 642423 ],
      "bullpen" : [ 612672, 543045, 667498, 594027, 622694, 664918, 641154, 456051, 650671, 592761, 605479, 570632, 657141 ],
      "battingOrder" : [ 542932, 641755, 434158, 435522, 623912, 656371, 621573, 592407, 595751 ],
      "info" : [ { }, { }, { } ],
      "note" : [ { } ]
    },
    "home" : {
      "team" : {
        "name" : "Philadelphia Phillies",
        "abbreviation" : "PHI",
        "record" : {
          "wins" : 81
        }
      },
      "teamStats" : {
        "batting" : {
          "runs" : 3,
          "doubles" : 1,
          "triples" : 0,
          "strikeOuts" : 10,
          "hits" : 13,
          "atBats" : 40,
          "rbi" : 3
        },
        "pitching" : {
          "runs" : 4,
          "doubles" : 0,
          "triples" : 0,
          "strikeOuts" : 9,
          "hits" : 7,
          "atBats" : 33,
          "inningsPitched" : "9.0",
          "rbi" : 4
        },
        "fielding" : {
          "assists" : 7,
          "putOuts" : 27,
          "errors" : 1
        }
      },
      "players" : {
        "ID516416" : {
          "person" : {
            "fullName" : "Jean Segura"
          },
          "jerseyNumber" : "2",
          "position" : {
            "name" : "Shortstop",
            "type" : "Infielder",
            "abbreviation" : "SS"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 143,
          "seasonStats" : {
            "batting" : {
              "runs" : 79,
              "doubles" : 37,
              "triples" : 4,
              "strikeOuts" : 73,
              "hits" : 161,
              "atBats" : 576,
              "rbi" : 60
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 351,
              "putOuts" : 175,
              "errors" : 20,
              "fielding" : ".963"
            }
          },
          "gameStatus" : { }
        },
        "ID592826" : {
          "person" : {
            "fullName" : "Vince Velasquez"
          },
          "jerseyNumber" : "21",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 143,
          "seasonStats" : {
            "batting" : {
              "runs" : 2,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 9,
              "hits" : 7,
              "atBats" : 30,
              "rbi" : 3
            },
            "pitching" : {
              "runs" : 69,
              "doubles" : 22,
              "triples" : 4,
              "strikeOuts" : 130,
              "hits" : 120,
              "atBats" : 458,
              "inningsPitched" : "117.1",
              "wins" : 7,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 13,
              "putOuts" : 15,
              "errors" : 4,
              "fielding" : ".875"
            }
          },
          "gameStatus" : { }
        },
        "ID547180" : {
          "person" : {
            "fullName" : "Bryce Harper"
          },
          "jerseyNumber" : "3",
          "position" : {
            "name" : "Outfielder",
            "type" : "Outfielder",
            "abbreviation" : "RF"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 1,
              "hits" : 2,
              "atBats" : 5,
              "rbi" : 0
            },
            "pitching" : { },
            "fielding" : {
              "assists" : 0,
              "putOuts" : 3,
              "errors" : 0,
              "fielding" : ".000"
            }
          },
          "status" : { },
          "parentTeamId" : 143,
          "battingOrder" : "300",
          "seasonStats" : {
            "batting" : {
              "runs" : 98,
              "doubles" : 36,
              "triples" : 1,
              "strikeOuts" : 178,
              "hits" : 149,
              "atBats" : 573,
              "rbi" : 114
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 13,
              "putOuts" : 284,
              "errors" : 5,
              "fielding" : ".983"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Outfielder",
            "type" : "Outfielder",
            "abbreviation" : "RF"
          } ]
        },
        "ID453172" : {
          "person" : {
            "fullName" : "Jared Hughes"
          },
          "jerseyNumber" : "25",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 2,
              "hits" : 0,
              "atBats" : 6,
              "inningsPitched" : "2.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 143,
          "battingOrder" : "908",
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 1,
              "hits" : 0,
              "atBats" : 2,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 37,
              "doubles" : 12,
              "triples" : 0,
              "strikeOuts" : 54,
              "hits" : 57,
              "atBats" : 249,
              "inningsPitched" : "71.1",
              "wins" : 5,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 9,
              "putOuts" : 5,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          } ]
        },
        "ID593576" : {
          "person" : {
            "fullName" : "Hector Neris"
          },
          "jerseyNumber" : "50",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 143,
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 1,
              "hits" : 0,
              "atBats" : 1,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 24,
              "doubles" : 7,
              "triples" : 0,
              "strikeOuts" : 89,
              "hits" : 45,
              "atBats" : 242,
              "inningsPitched" : "67.2",
              "wins" : 3,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 6,
              "putOuts" : 6,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { }
        },
        "ID592663" : {
          "person" : {
            "fullName" : "J.T. Realmuto"
          },
          "jerseyNumber" : "10",
          "position" : {
            "name" : "Catcher",
            "type" : "Catcher",
            "abbreviation" : "C"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 143,
          "seasonStats" : {
            "batting" : {
              "runs" : 92,
              "doubles" : 36,
              "triples" : 3,
              "strikeOuts" : 123,
              "hits" : 148,
              "atBats" : 538,
              "rbi" : 83
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 69,
              "putOuts" : 1115,
              "errors" : 9,
              "fielding" : ".992"
            }
          },
          "gameStatus" : { }
        },
        "ID517369" : {
          "person" : {
            "fullName" : "Jose Pirela"
          },
          "jerseyNumber" : "67",
          "position" : {
            "name" : "Pinch Hitter",
            "type" : "Hitter",
            "abbreviation" : "PH"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 1,
              "rbi" : 0
            },
            "pitching" : { },
            "fielding" : {
              "assists" : 0,
              "putOuts" : 0,
              "errors" : 0,
              "fielding" : ".000"
            }
          },
          "status" : { },
          "parentTeamId" : 143,
          "battingOrder" : "909",
          "seasonStats" : {
            "batting" : {
              "runs" : 1,
              "doubles" : 1,
              "triples" : 0,
              "strikeOuts" : 7,
              "hits" : 4,
              "atBats" : 22,
              "rbi" : 2
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 0,
              "putOuts" : 5,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Pinch Hitter",
            "type" : "Hitter",
            "abbreviation" : "PH"
          } ]
        },
        "ID592767" : {
          "person" : {
            "fullName" : "Drew Smyly"
          },
          "jerseyNumber" : "18",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 143,
          "seasonStats" : {
            "batting" : {
              "runs" : 1,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 9,
              "hits" : 0,
              "atBats" : 19,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 83,
              "doubles" : 23,
              "triples" : 4,
              "strikeOuts" : 120,
              "hits" : 126,
              "atBats" : 453,
              "inningsPitched" : "114.0",
              "wins" : 4,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 12,
              "putOuts" : 4,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { }
        },
        "ID664068" : {
          "person" : {
            "fullName" : "Scott Kingery"
          },
          "jerseyNumber" : "4",
          "position" : {
            "name" : "Third Base",
            "type" : "Infielder",
            "abbreviation" : "3B"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 143,
          "seasonStats" : {
            "batting" : {
              "runs" : 64,
              "doubles" : 34,
              "triples" : 4,
              "strikeOuts" : 147,
              "hits" : 118,
              "atBats" : 458,
              "rbi" : 55
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 138,
              "putOuts" : 200,
              "errors" : 9,
              "fielding" : ".974"
            }
          },
          "gameStatus" : { }
        },
        "ID608384" : {
          "person" : {
            "fullName" : "Nick Williams"
          },
          "jerseyNumber" : "5",
          "position" : {
            "name" : "Pinch Hitter",
            "type" : "Hitter",
            "abbreviation" : "PH"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 1,
              "rbi" : 0
            },
            "pitching" : { },
            "fielding" : {
              "assists" : 0,
              "putOuts" : 0,
              "errors" : 0,
              "fielding" : ".000"
            }
          },
          "status" : { },
          "parentTeamId" : 143,
          "battingOrder" : "902",
          "seasonStats" : {
            "batting" : {
              "runs" : 9,
              "doubles" : 4,
              "triples" : 0,
              "strikeOuts" : 43,
              "hits" : 16,
              "atBats" : 106,
              "rbi" : 5
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 1,
              "putOuts" : 31,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Pinch Hitter",
            "type" : "Hitter",
            "abbreviation" : "PH"
          } ]
        },
        "ID596748" : {
          "person" : {
            "fullName" : "Maikel Franco"
          },
          "jerseyNumber" : "7",
          "position" : {
            "name" : "Third Base",
            "type" : "Infielder",
            "abbreviation" : "3B"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 1,
              "atBats" : 5,
              "rbi" : 0
            },
            "pitching" : { },
            "fielding" : {
              "assists" : 0,
              "putOuts" : 1,
              "errors" : 1,
              "fielding" : ".000"
            }
          },
          "status" : { },
          "parentTeamId" : 143,
          "battingOrder" : "600",
          "seasonStats" : {
            "batting" : {
              "runs" : 48,
              "doubles" : 17,
              "triples" : 0,
              "strikeOuts" : 61,
              "hits" : 91,
              "atBats" : 389,
              "rbi" : 56
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 195,
              "putOuts" : 63,
              "errors" : 8,
              "fielding" : ".970"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Third Base",
            "type" : "Infielder",
            "abbreviation" : "3B"
          } ]
        },
        "ID608344" : {
          "person" : {
            "fullName" : "Cole Irvin"
          },
          "jerseyNumber" : "47",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 143,
          "seasonStats" : {
            "batting" : {
              "runs" : 1,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 2,
              "hits" : 1,
              "atBats" : 6,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 28,
              "doubles" : 8,
              "triples" : 0,
              "strikeOuts" : 31,
              "hits" : 45,
              "atBats" : 162,
              "inningsPitched" : "41.2",
              "wins" : 2,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 2,
              "putOuts" : 5,
              "errors" : 2,
              "fielding" : ".778"
            }
          },
          "gameStatus" : { }
        },
        "ID658305" : {
          "person" : {
            "fullName" : "Edgar Garcia"
          },
          "jerseyNumber" : "66",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 1,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 1,
              "hits" : 2,
              "atBats" : 7,
              "inningsPitched" : "2.0",
              "wins" : 0,
              "rbi" : 1
            },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 143,
          "battingOrder" : "901",
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 25,
              "doubles" : 5,
              "triples" : 0,
              "strikeOuts" : 45,
              "hits" : 38,
              "atBats" : 136,
              "inningsPitched" : "39.0",
              "wins" : 2,
              "rbi" : 1
            },
            "fielding" : {
              "assists" : 1,
              "putOuts" : 2,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          } ]
        },
        "ID595284" : {
          "person" : {
            "fullName" : "Andrew Knapp"
          },
          "jerseyNumber" : "15",
          "position" : {
            "name" : "Catcher",
            "type" : "Catcher",
            "abbreviation" : "C"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 3,
              "hits" : 1,
              "atBats" : 5,
              "rbi" : 0
            },
            "pitching" : { },
            "fielding" : {
              "assists" : 2,
              "putOuts" : 9,
              "errors" : 0,
              "fielding" : ".000"
            }
          },
          "status" : { },
          "parentTeamId" : 143,
          "battingOrder" : "700",
          "seasonStats" : {
            "batting" : {
              "runs" : 12,
              "doubles" : 9,
              "triples" : 0,
              "strikeOuts" : 51,
              "hits" : 29,
              "atBats" : 136,
              "rbi" : 8
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 27,
              "putOuts" : 319,
              "errors" : 3,
              "fielding" : ".991"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Catcher",
            "type" : "Catcher",
            "abbreviation" : "C"
          } ]
        },
        "ID660853" : {
          "person" : {
            "fullName" : "Enyel De Los Santos"
          },
          "jerseyNumber" : "51",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 143,
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 1,
              "hits" : 0,
              "atBats" : 1,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 9,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 9,
              "hits" : 13,
              "atBats" : 41,
              "inningsPitched" : "11.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 0,
              "putOuts" : 0,
              "errors" : 0,
              "fielding" : ".000"
            }
          },
          "gameStatus" : { }
        },
        "ID501625" : {
          "person" : {
            "fullName" : "Jose Alvarez"
          },
          "jerseyNumber" : "52",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 2,
              "hits" : 1,
              "atBats" : 4,
              "inningsPitched" : "1.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 1,
              "putOuts" : 0,
              "errors" : 0,
              "fielding" : ".000"
            }
          },
          "status" : { },
          "parentTeamId" : 143,
          "battingOrder" : "910",
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 25,
              "doubles" : 10,
              "triples" : 0,
              "strikeOuts" : 51,
              "hits" : 66,
              "atBats" : 228,
              "inningsPitched" : "59.0",
              "wins" : 3,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 13,
              "putOuts" : 5,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          } ]
        },
        "ID543543" : {
          "person" : {
            "fullName" : "Brad Miller"
          },
          "jerseyNumber" : "33",
          "position" : {
            "name" : "Outfielder",
            "type" : "Outfielder",
            "abbreviation" : "LF"
          },
          "stats" : {
            "batting" : {
              "runs" : 2,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 1,
              "hits" : 4,
              "atBats" : 5,
              "rbi" : 3
            },
            "pitching" : { },
            "fielding" : {
              "assists" : 0,
              "putOuts" : 2,
              "errors" : 0,
              "fielding" : ".000"
            }
          },
          "status" : { },
          "parentTeamId" : 143,
          "battingOrder" : "200",
          "seasonStats" : {
            "batting" : {
              "runs" : 26,
              "doubles" : 6,
              "triples" : 1,
              "strikeOuts" : 45,
              "hits" : 40,
              "atBats" : 154,
              "rbi" : 25
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 52,
              "putOuts" : 32,
              "errors" : 4,
              "fielding" : ".955"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Outfielder",
            "type" : "Outfielder",
            "abbreviation" : "LF"
          } ]
        },
        "ID543883" : {
          "person" : {
            "fullName" : "Nick Vincent"
          },
          "jerseyNumber" : "29",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 3,
              "inningsPitched" : "1.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 143,
          "battingOrder" : "903",
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 3,
              "hits" : 0,
              "atBats" : 3,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 23,
              "doubles" : 8,
              "triples" : 1,
              "strikeOuts" : 47,
              "hits" : 47,
              "atBats" : 173,
              "inningsPitched" : "44.2",
              "wins" : 1,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 2,
              "putOuts" : 1,
              "errors" : 2,
              "fielding" : ".600"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          } ]
        },
        "ID504379" : {
          "person" : {
            "fullName" : "Juan Nicasio"
          },
          "jerseyNumber" : "12",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 143,
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 1,
              "hits" : 0,
              "atBats" : 2,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 27,
              "doubles" : 13,
              "triples" : 1,
              "strikeOuts" : 45,
              "hits" : 57,
              "atBats" : 191,
              "inningsPitched" : "47.1",
              "wins" : 2,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 7,
              "putOuts" : 4,
              "errors" : 1,
              "fielding" : ".917"
            }
          },
          "gameStatus" : { }
        },
        "ID446481" : {
          "person" : {
            "fullName" : "Sean Rodriguez"
          },
          "jerseyNumber" : "13",
          "position" : {
            "name" : "Shortstop",
            "type" : "Infielder",
            "abbreviation" : "SS"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 2,
              "rbi" : 0
            },
            "pitching" : { },
            "fielding" : {
              "assists" : 1,
              "putOuts" : 3,
              "errors" : 0,
              "fielding" : ".000"
            }
          },
          "status" : { },
          "parentTeamId" : 143,
          "battingOrder" : "800",
          "seasonStats" : {
            "batting" : {
              "runs" : 24,
              "doubles" : 5,
              "triples" : 0,
              "strikeOuts" : 41,
              "hits" : 25,
              "atBats" : 112,
              "rbi" : 12
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 1,
              "hits" : 0,
              "atBats" : 4,
              "inningsPitched" : "1.1",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 54,
              "putOuts" : 40,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Shortstop",
            "type" : "Infielder",
            "abbreviation" : "SS"
          } ]
        },
        "ID457803" : {
          "person" : {
            "fullName" : "Jay Bruce"
          },
          "jerseyNumber" : "23",
          "position" : {
            "name" : "Outfielder",
            "type" : "Outfielder",
            "abbreviation" : "RF"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 143,
          "seasonStats" : {
            "batting" : {
              "runs" : 43,
              "doubles" : 17,
              "triples" : 0,
              "strikeOuts" : 82,
              "hits" : 67,
              "atBats" : 310,
              "rbi" : 59
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 16,
              "putOuts" : 206,
              "errors" : 4,
              "fielding" : ".982"
            }
          },
          "gameStatus" : { }
        },
        "ID594838" : {
          "person" : {
            "fullName" : "Phil Gosselin"
          },
          "jerseyNumber" : "9",
          "position" : {
            "name" : "Pinch Hitter",
            "type" : "Hitter",
            "abbreviation" : "PH"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 1,
              "hits" : 0,
              "atBats" : 1,
              "rbi" : 0
            },
            "pitching" : { },
            "fielding" : {
              "assists" : 0,
              "putOuts" : 0,
              "errors" : 0,
              "fielding" : ".000"
            }
          },
          "status" : { },
          "parentTeamId" : 143,
          "battingOrder" : "907",
          "seasonStats" : {
            "batting" : {
              "runs" : 5,
              "doubles" : 3,
              "triples" : 0,
              "strikeOuts" : 16,
              "hits" : 17,
              "atBats" : 65,
              "rbi" : 7
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 9,
              "putOuts" : 11,
              "errors" : 1,
              "fielding" : ".952"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Pinch Hitter",
            "type" : "Hitter",
            "abbreviation" : "PH"
          } ]
        },
        "ID620453" : {
          "person" : {
            "fullName" : "Deivy Grullon"
          },
          "jerseyNumber" : "73",
          "position" : {
            "name" : "Catcher",
            "type" : "Catcher",
            "abbreviation" : "C"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 143,
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 1,
              "triples" : 0,
              "strikeOuts" : 2,
              "hits" : 1,
              "atBats" : 9,
              "rbi" : 1
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 0,
              "putOuts" : 21,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { }
        },
        "ID601713" : {
          "person" : {
            "fullName" : "Nick Pivetta"
          },
          "jerseyNumber" : "43",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 143,
          "seasonStats" : {
            "batting" : {
              "runs" : 1,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 19,
              "hits" : 2,
              "atBats" : 25,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 64,
              "doubles" : 18,
              "triples" : 5,
              "strikeOuts" : 89,
              "hits" : 103,
              "atBats" : 370,
              "inningsPitched" : "93.2",
              "wins" : 4,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 7,
              "putOuts" : 9,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { }
        },
        "ID621107" : {
          "person" : {
            "fullName" : "Zach Eflin"
          },
          "jerseyNumber" : "56",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 143,
          "seasonStats" : {
            "batting" : {
              "runs" : 3,
              "doubles" : 1,
              "triples" : 0,
              "strikeOuts" : 27,
              "hits" : 8,
              "atBats" : 50,
              "rbi" : 2
            },
            "pitching" : {
              "runs" : 88,
              "doubles" : 34,
              "triples" : 0,
              "strikeOuts" : 129,
              "hits" : 172,
              "atBats" : 642,
              "inningsPitched" : "163.1",
              "wins" : 10,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 20,
              "putOuts" : 13,
              "errors" : 1,
              "fielding" : ".971"
            }
          },
          "gameStatus" : { }
        },
        "ID624133" : {
          "person" : {
            "fullName" : "Ranger Suarez"
          },
          "jerseyNumber" : "55",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 143,
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 2,
              "hits" : 1,
              "atBats" : 4,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 18,
              "doubles" : 8,
              "triples" : 0,
              "strikeOuts" : 42,
              "hits" : 52,
              "atBats" : 187,
              "inningsPitched" : "48.2",
              "wins" : 6,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 8,
              "putOuts" : 5,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { }
        },
        "ID453284" : {
          "person" : {
            "fullName" : "Blake Parker"
          },
          "jerseyNumber" : "53",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 3,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 2,
              "hits" : 3,
              "atBats" : 6,
              "inningsPitched" : "1.0",
              "rbi" : 3
            },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 143,
          "battingOrder" : "900",
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 1,
              "hits" : 0,
              "atBats" : 1,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 32,
              "doubles" : 7,
              "triples" : 0,
              "strikeOuts" : 65,
              "hits" : 53,
              "atBats" : 220,
              "inningsPitched" : "61.1",
              "wins" : 3,
              "rbi" : 3
            },
            "fielding" : {
              "assists" : 5,
              "putOuts" : 4,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          } ]
        },
        "ID656354" : {
          "person" : {
            "fullName" : "Austin Davis"
          },
          "jerseyNumber" : "54",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 1,
              "triples" : 0,
              "strikeOuts" : 1,
              "hits" : 1,
              "atBats" : 4,
              "inningsPitched" : "1.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 1,
              "putOuts" : 0,
              "errors" : 0,
              "fielding" : ".000"
            }
          },
          "status" : { },
          "parentTeamId" : 143,
          "battingOrder" : "906",
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 15,
              "doubles" : 3,
              "triples" : 0,
              "strikeOuts" : 24,
              "hits" : 22,
              "atBats" : 77,
              "inningsPitched" : "20.2",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 2,
              "putOuts" : 1,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          } ]
        },
        "ID573046" : {
          "person" : {
            "fullName" : "Mike Morin"
          },
          "jerseyNumber" : "28",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 1,
              "hits" : 0,
              "atBats" : 3,
              "inningsPitched" : "1.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 1,
              "putOuts" : 0,
              "errors" : 0,
              "fielding" : ".000"
            }
          },
          "status" : { },
          "parentTeamId" : 143,
          "battingOrder" : "904",
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 29,
              "doubles" : 10,
              "triples" : 0,
              "strikeOuts" : 26,
              "hits" : 46,
              "atBats" : 190,
              "inningsPitched" : "50.2",
              "wins" : 1,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 5,
              "putOuts" : 4,
              "errors" : 1,
              "fielding" : ".900"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          } ]
        },
        "ID605400" : {
          "person" : {
            "fullName" : "Aaron Nola"
          },
          "jerseyNumber" : "27",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 143,
          "seasonStats" : {
            "batting" : {
              "runs" : 6,
              "doubles" : 2,
              "triples" : 0,
              "strikeOuts" : 35,
              "hits" : 7,
              "atBats" : 59,
              "rbi" : 2
            },
            "pitching" : {
              "runs" : 91,
              "doubles" : 34,
              "triples" : 3,
              "strikeOuts" : 229,
              "hits" : 176,
              "atBats" : 755,
              "inningsPitched" : "202.1",
              "wins" : 12,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 27,
              "putOuts" : 9,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { }
        },
        "ID489149" : {
          "person" : {
            "fullName" : "Logan Morrison"
          },
          "jerseyNumber" : "8",
          "position" : {
            "name" : "Pinch Hitter",
            "type" : "Hitter",
            "abbreviation" : "PH"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 1,
              "atBats" : 1,
              "rbi" : 0
            },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 143,
          "battingOrder" : "905",
          "seasonStats" : {
            "batting" : {
              "runs" : 5,
              "doubles" : 1,
              "triples" : 0,
              "strikeOuts" : 10,
              "hits" : 7,
              "atBats" : 35,
              "rbi" : 3
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 0,
              "putOuts" : 14,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Pinch Hitter",
            "type" : "Hitter",
            "abbreviation" : "PH"
          } ]
        },
        "ID591693" : {
          "person" : {
            "fullName" : "Edubray Ramos"
          },
          "jerseyNumber" : "61",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 143,
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 10,
              "doubles" : 2,
              "triples" : 1,
              "strikeOuts" : 11,
              "hits" : 19,
              "atBats" : 61,
              "inningsPitched" : "15.0",
              "wins" : 1,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 1,
              "putOuts" : 0,
              "errors" : 0,
              "fielding" : "1.000"
            }
          },
          "gameStatus" : { }
        },
        "ID656514" : {
          "person" : {
            "fullName" : "Adam Haseley"
          },
          "jerseyNumber" : "40",
          "position" : {
            "name" : "Outfielder",
            "type" : "Outfielder",
            "abbreviation" : "CF"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 1,
              "triples" : 0,
              "strikeOuts" : 1,
              "hits" : 2,
              "atBats" : 5,
              "rbi" : 0
            },
            "pitching" : { },
            "fielding" : {
              "assists" : 0,
              "putOuts" : 2,
              "errors" : 0,
              "fielding" : ".000"
            }
          },
          "status" : { },
          "parentTeamId" : 143,
          "battingOrder" : "500",
          "seasonStats" : {
            "batting" : {
              "runs" : 30,
              "doubles" : 14,
              "triples" : 0,
              "strikeOuts" : 60,
              "hits" : 59,
              "atBats" : 222,
              "rbi" : 26
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 4,
              "putOuts" : 126,
              "errors" : 1,
              "fielding" : ".992"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Outfielder",
            "type" : "Outfielder",
            "abbreviation" : "CF"
          } ]
        },
        "ID514917" : {
          "person" : {
            "fullName" : "Cesar Hernandez"
          },
          "jerseyNumber" : "16",
          "position" : {
            "name" : "Second Base",
            "type" : "Infielder",
            "abbreviation" : "2B"
          },
          "stats" : {
            "batting" : {
              "runs" : 1,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 1,
              "hits" : 1,
              "atBats" : 5,
              "rbi" : 0
            },
            "pitching" : { },
            "fielding" : {
              "assists" : 1,
              "putOuts" : 2,
              "errors" : 0,
              "fielding" : ".000"
            }
          },
          "status" : { },
          "parentTeamId" : 143,
          "battingOrder" : "100",
          "seasonStats" : {
            "batting" : {
              "runs" : 77,
              "doubles" : 31,
              "triples" : 3,
              "strikeOuts" : 100,
              "hits" : 171,
              "atBats" : 612,
              "rbi" : 71
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 354,
              "putOuts" : 271,
              "errors" : 12,
              "fielding" : ".981"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "Second Base",
            "type" : "Infielder",
            "abbreviation" : "2B"
          } ]
        },
        "ID656555" : {
          "person" : {
            "fullName" : "Rhys Hoskins"
          },
          "jerseyNumber" : "17",
          "position" : {
            "name" : "First Base",
            "type" : "Infielder",
            "abbreviation" : "1B"
          },
          "stats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 2,
              "hits" : 1,
              "atBats" : 4,
              "rbi" : 0
            },
            "pitching" : { },
            "fielding" : {
              "assists" : 0,
              "putOuts" : 5,
              "errors" : 0,
              "fielding" : ".000"
            }
          },
          "status" : { },
          "parentTeamId" : 143,
          "battingOrder" : "400",
          "seasonStats" : {
            "batting" : {
              "runs" : 86,
              "doubles" : 33,
              "triples" : 5,
              "strikeOuts" : 173,
              "hits" : 129,
              "atBats" : 570,
              "rbi" : 85
            },
            "pitching" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 0,
              "hits" : 0,
              "atBats" : 0,
              "inningsPitched" : "0.0",
              "wins" : 0,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 122,
              "putOuts" : 1193,
              "errors" : 9,
              "fielding" : ".993"
            }
          },
          "gameStatus" : { },
          "allPositions" : [ {
            "name" : "First Base",
            "type" : "Infielder",
            "abbreviation" : "1B"
          } ]
        },
        "ID450306" : {
          "person" : {
            "fullName" : "Jason Vargas"
          },
          "jerseyNumber" : "44",
          "position" : {
            "name" : "Pitcher",
            "type" : "Pitcher",
            "abbreviation" : "P"
          },
          "stats" : {
            "batting" : { },
            "pitching" : { },
            "fielding" : { }
          },
          "status" : { },
          "parentTeamId" : 143,
          "seasonStats" : {
            "batting" : {
              "runs" : 0,
              "doubles" : 0,
              "triples" : 0,
              "strikeOuts" : 22,
              "hits" : 3,
              "atBats" : 40,
              "rbi" : 0
            },
            "pitching" : {
              "runs" : 84,
              "doubles" : 34,
              "triples" : 1,
              "strikeOuts" : 124,
              "hits" : 141,
              "atBats" : 566,
              "inningsPitched" : "149.2",
              "wins" : 7,
              "rbi" : 0
            },
            "fielding" : {
              "assists" : 17,
              "putOuts" : 4,
              "errors" : 3,
              "fielding" : ".875"
            }
          },
          "gameStatus" : { }
        }
      },
      "batters" : [ 514917, 543543, 547180, 656555, 656514, 596748, 595284, 446481, 453284, 658305, 608384, 543883, 573046, 489149, 656354, 594838, 453172, 517369, 501625 ],
      "pitchers" : [ 453284, 658305, 543883, 573046, 656354, 453172, 501625 ],
      "bench" : [ 457803, 620453, 664068, 592663, 516416 ],
      "bullpen" : [ 660853, 621107, 608344, 593576, 504379, 605400, 601713, 591693, 592767, 624133, 450306, 592826 ],
      "battingOrder" : [ 514917, 543543, 547180, 656555, 656514, 596748, 595284, 446481, 501625 ],
      "info" : [ { }, { } ],
      "note" : [ { }, { }, { }, { } ]
    }
  }
}
  """;
