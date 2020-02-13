
import 'package:sample_match/logic/Abstracts/NetworkingProvider.dart';
import 'package:sample_match/logic/Data-Models/API/GetBatterPitchersRequest.dart';
import 'package:sample_match/logic/Data-Models/API/GetLineScoreRequest.dart';
import 'package:sample_match/logic/Data-Models/API/GetMatchListRequest.dart';
import 'package:sample_match/logic/Data-Models/Internal/BatterPitcherSummary.dart';
import 'package:sample_match/logic/Data-Models/Internal/LineScoreSummary.dart';
import 'package:sample_match/logic/Data-Models/Internal/MatchSummary.dart';

class MatchRepository {
  final NetworkingProvider _networkingProvider;
  MatchRepository(this._networkingProvider);

  Future<List<MatchSummary>> getMatchList() async{
    GetMatchListRequest request = GetMatchListRequest();
    var response = await request.fetchResponse(_networkingProvider);  
     var games = response.dates.expand((e)=>e.games);
     var matchList = games.map((e) => MatchSummary(e)).toList();
    return matchList;
  }

  Future<LineScoreSummary> getLineScore(MatchSummary matchSummary) async{
    var request = GetLineScoreRequest(gameId: matchSummary.gameId);
    var response = await request.fetchResponse(_networkingProvider);
    LineScoreSummary summary = LineScoreSummary(response: response,matchSummary: matchSummary);
    return summary;
  }

  Future<BatterPitcherSummary> getBatterPitcherSummary(MatchSummary matchSummary) async{
    var request = GetBatterPitchersRequest(gameId: matchSummary.gameId);
    var response = await request.fetchResponse(_networkingProvider);
    var summary = BatterPitcherSummary(response.teams);
    return summary;
  }

  String teamLogoUrl(int teamId){
    return 'https://www.mlbstatic.com/team-logos/$teamId.svg';
  }

}