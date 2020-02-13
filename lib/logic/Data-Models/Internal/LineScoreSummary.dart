import 'package:sample_match/logic/Data-Models/API/GetLineScoreRequest.dart';
import 'MatchSummary.dart';

class LineScoreSummary {
  final GetLineScoreResponse response;
  final MatchSummary matchSummary;
  List<String> scoreTableData = [];

  
  LineScoreSummary({this.matchSummary, this.response}) {
    List<int> homeValues = [];
    List<int> awayValue = [];
    scoreTableData.addAll([" ","1","2","3","4","5","6","7","8","9","R","H","E"]);

    for (int i = 0; i < response.innings.length; i++) {
      homeValues.add(response.innings[i].home.hits);
      awayValue.add(response.innings[i].away.hits);
    }
    // Home
    scoreTableData.add(matchSummary.home);
    homeValues.add(response.teams.home.runs);
    homeValues.add(response.teams.home.hits);
    homeValues.add(response.teams.home.errors);
    scoreTableData.addAll(homeValues.map((e) => e.toString()));
    
    // Away
    scoreTableData.add(matchSummary.away);
    awayValue.add(response.teams.away.runs);
    awayValue.add(response.teams.away.hits);
    awayValue.add(response.teams.away.errors);
    scoreTableData.addAll(awayValue.map((e)=> e.toString()));
  }
}
