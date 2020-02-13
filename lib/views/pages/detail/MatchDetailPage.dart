import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_match/logic/Repositories/MatchRepository.dart';
import 'MatchDetails.dart';

class MatchDetailsPage extends StatefulWidget {
  final String title = "Details";
  final MatchSummary summary;
  final MatchDetailsBloc matchDetailBloc;
  final MatchRepository repository;
  MatchDetailsPage({Key key, this.summary, this.repository})
      : matchDetailBloc = MatchDetailsBloc(repository),
        super(key: key) {
    // Initiate Detail downloading
    matchDetailBloc.add(MatchDetailsOnLDataRequest(summary));
  }

  @override
  _MatchDetailsPageState createState() => _MatchDetailsPageState();
}

class _MatchDetailsPageState extends State<MatchDetailsPage> {
  var selectedTeamIndex = 0;
  MatchDetailsBloc get _matchDetailBloc => widget.matchDetailBloc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: BlocBuilder<MatchDetailsBloc, MatchDetailsState>(
              bloc: _matchDetailBloc,
              builder: (BuildContext context, MatchDetailsState state) {
                if (state is MatchDetailsLineScoreDownloadedState) {
                  return _DetailsWidget(
                    widget: widget,
                    scoreList: state.lineScoreSummary.scoreTableData,
                    batterList: _batterListFor(
                        selectedTeamIndex, state.batterPitcherSummary),
                    pitchersList: _pitchingListFor(
                        selectedTeamIndex, state.batterPitcherSummary),
                    onIndexChanged: onSelectedTeamChanged,
                    selectedIndex: selectedTeamIndex,
                  );
                }
                return Center(child: Text("Loading"));
              })),
    );
  }

  // Batter Data Table
  List<String> _batterListFor(
      int selectedIndex, BatterPitcherSummary batterPitcherSummary) {
    if (selectedIndex == 0) {
      return batterPitcherSummary.homeBattingData;
    } else {
      return batterPitcherSummary.awayBattinghData;
    }
  }

  // Pitching Data Table
  List<String> _pitchingListFor(
      int selectedIndex, BatterPitcherSummary batterPitcherSummary) {
    if (selectedIndex == 0) {
      return batterPitcherSummary.homePitchData;
    } else {
      return batterPitcherSummary.awayPitchData;
    }
  }

  // Handle Events
  void onSelectedTeamChanged(int newIndex) {
    setState(() {
      selectedTeamIndex = newIndex;
    });
  }
}

class _DetailsWidget extends StatelessWidget {
  const _DetailsWidget(
      {Key key,
      @required this.widget,
      this.scoreList,
      this.batterList,
      this.pitchersList,
      this.onIndexChanged,
      this.selectedIndex})
      : super(key: key);
  final void Function(int) onIndexChanged;
  final MatchDetailsPage widget;
  final List<String> scoreList;
  final List<String> batterList;
  final List<String> pitchersList;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          MatchListItemWidget(
            summary: widget.summary,
            matchRepository: widget.repository,
          ),
          MatchScoreTable(
            items: scoreList,
            crossAxisCount: 13,
            boldIndexes: lineScoreBoldTableIndexes,
          ),
          TeamToggleButton(
            onIndexChanged: onIndexChanged,
            selectedIndex: selectedIndex,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Hitting",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          MatchScoreTable(
            items: batterList,
            crossAxisCount: 5,
            padding: EdgeInsets.only(left: 50, right: 50),
            boldIndexes: headerFooterBoldList(batterList.length, 5),
          ),
          SizedBox(
            height: 220,
          ),
          Text(
            "Pitching",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          MatchScoreTable(
            items: pitchersList,
            crossAxisCount: 5,
            padding: EdgeInsets.only(left: 50, right: 50),
            boldIndexes: headerFooterBoldList(pitchersList.length, 5),
          ),
          SizedBox(
            height: 170,
          ),
        ],
      ),
    );
  }

  static const List<int> lineScoreBoldTableIndexes = [
    10,
    11,
    12,
    23,
    24,
    25,
    36,
    37,
    38
  ];
  static List<int> headerFooterBoldList(int totalItems, int crossAxisCount) {
    List<int> indexList = [];
    while (crossAxisCount > 0) {
      indexList.add(crossAxisCount - 1);
      indexList.add(totalItems - crossAxisCount--);
    }
    return indexList;
  }
}
