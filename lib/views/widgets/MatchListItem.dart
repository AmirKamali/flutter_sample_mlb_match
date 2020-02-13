import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sample_match/logic/Data-Models/Internal/MatchSummary.dart';
import 'package:sample_match/logic/Repositories/MatchRepository.dart';


// Widget Displaying Home, Away, Score, Game State
class MatchListItemWidget extends StatelessWidget {
  static const double teamWidth = 90;
  static const double logoWidth = 50;
  final MatchSummary summary;
  final MatchRepository matchRepository;
  const MatchListItemWidget({
    this.summary,
    this.matchRepository,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 0),
      child: Padding(
        padding: const EdgeInsets.only(bottom:4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 15),
              width: teamWidth,
              child: Column(
                children: <Widget>[
                  SvgPicture.network(
                    matchRepository.teamLogoUrl(summary.homeId),
                    width: logoWidth,
                  ),
                  Text(
                    summary.home,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Text(
              "${summary.homeScore}",
              style: Theme.of(context).textTheme.display1,
            ),
            Container(
              child: Text(summary.gameState),
            ),
            Text(
              "${summary.awayScore}",
              style: Theme.of(context).textTheme.display1,
            ),
            Container(
              padding: EdgeInsets.only(right: 15),
              width: teamWidth,
              child: Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:15.0,bottom: 15.0),
                  child: SvgPicture.network(
                    matchRepository.teamLogoUrl(summary.awayId),
                    width: logoWidth,
                  ),
                ),
                Text(
                  summary.away,
                  textAlign: TextAlign.center,
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
