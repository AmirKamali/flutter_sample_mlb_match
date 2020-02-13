import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_match/logic/Repositories/MatchRepository.dart';
import 'MatchList.dart';
import 'package:sample_match/views/widgets/MatchListItem.dart';
import '../detail/MatchDetailPage.dart';

class MatchListPage extends StatefulWidget {
  final MatchListBloc matchListBloc;
  final MatchRepository repository;// = MatchRepository(networkingProvider)
  final String title = "Match List";

  MatchListPage({Key key, NetworkingProvider networkingProvider})
      : repository = MatchRepository(networkingProvider),
        matchListBloc = MatchListBloc(networkingProvider),
        super(key: key) {
    matchListBloc.repository = repository;
    matchListBloc.add(OnMatchListRequestEvent());
  }

  @override
  _MatchListPageState createState() => _MatchListPageState();
}

class _MatchListPageState extends State<MatchListPage> {
  MatchListBloc get _matchListBloc => widget.matchListBloc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: BlocBuilder<MatchListBloc, MatchListState>(
            bloc: _matchListBloc,
            builder: (BuildContext context, MatchListState state) {
              if (state is MatchListDownloadedState) {
                return SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: matchSummaryWidgets(state.gameSummary),
                    // This trailing comma makes auto-formatting nicer for build methods.
                  ),
                );
              }
              return Center(child: Text("Loading"));
            })
            );
  }

  List<Widget> matchSummaryWidgets(List<MatchSummary> summary) {
    return summary.map((e) => selectableMatchItemWidget(summary: e)).toList();
  }
  Widget selectableMatchItemWidget({MatchSummary summary}){
    return  GestureDetector(
      // When the child is tapped, show a snackbar.
      onTap: () {
        onItemPressed(summary);
      },child: MatchListItemWidget(summary: summary,matchRepository: widget.repository,),);
  }

  void onItemPressed(MatchSummary summary) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MatchDetailsPage(summary: summary,repository: widget.repository,)),
    );
  }
}
