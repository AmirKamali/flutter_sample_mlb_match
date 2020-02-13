
import 'package:sample_match/logic/Data-Models/API/GetMatchListRequest.dart';

class MatchSummary {
  final int homeId;
  final String home;
  final String away;
  final int awayId;
  final int homeScore;
  final int awayScore;
  final String homeImageUrl;
  final String awayImageUrl;
  final String gameState;
  final int gameId;

  MatchSummary(Game game):
  
  home =  game.teams.home.team.name,
  homeId = game.teams.home.team.id,
  homeScore = game.teams.home.score,
  away = game.teams.away.team.name,
  awayId = game.teams.away.team.id,
  awayScore = game.teams.away.score,
  gameState = game.status.abstractGameState,
  gameId = game.gamePk,
  homeImageUrl = "",
  awayImageUrl = "";
}
