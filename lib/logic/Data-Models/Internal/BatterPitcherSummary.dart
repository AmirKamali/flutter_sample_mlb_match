
import 'package:sample_match/logic/Data-Models/API/GetMatchListRequest.dart';

class BatterPitcherSummary {
  final GameTeams teams;
  List<String> homeBattingData = [];
  List<String> awayBattinghData = [];
  List<String> homePitchData = [];
  List<String> awayPitchData = [];

  BatterPitcherSummary(this.teams) {
    // Batting
    _processBattingSummary(teams.home,homeBattingData);
    _processBattingSummary(teams.away,awayBattinghData);
    
    // Pitching
    _processPitchingSummary(teams.home, homePitchData);
    _processPitchingSummary(teams.away, awayPitchData);


  }
  void _processPitchingSummary(TeamScore team,List<String> resultList) {
    // Add Header data
    resultList.addAll(["PITCHERS", "IP", "H", "R", "K"]);
    
    // Add Players Stats
    var pitchersList = team.pitchers.map((e) => "ID$e");
    for (var playerId in pitchersList) {
      var player = team.players[playerId];
      resultList.add(player.person.fullName);
      _addPitchingData(player.stats.pitching, resultList);
    }
    // Add Footer data
    resultList.add("TEAM");
    _addPitchingData(team.teamStats.pitching, resultList);

  }

  void _processBattingSummary(TeamScore team,List<String> resultList) {
    // Add Header data
    resultList.addAll(["HITTERS", "AB", "R", "H", "RBI"]);

    // Add Players Stats
    var battersList = team.batters.map((e) => "ID$e");
    for (var playerId in battersList) {
      var player = team.players[playerId];
      resultList.add(player.person.fullName);
      _addBattingData(player.stats.batting, resultList);
    }
    // Add Footer data
    resultList.add("TEAM");
    _addBattingData(team.teamStats.batting, resultList);
  }

  void _addBattingData(BattingPitchingActivity batting, List<String> toArray) {
    toArray.addAll([
      valueToString(batting.atBats),
      valueToString(batting.runs),
      valueToString(batting.hits),
      valueToString(batting.rbi)
    ]);
  }

  void _addPitchingData(BattingPitchingActivity pitching, List<String> toArray) {
    toArray.addAll([
      pitching.inningsPitched ?? "-",
      valueToString(pitching.hits),
      valueToString(pitching.runs),
      valueToString(pitching.strikeOuts)
    ]);
  }
  // Display '-' in case null value is returned 
  String valueToString(int value){
    if (value == null){
      return "-";
    }
    return value.toString();
  }
}
