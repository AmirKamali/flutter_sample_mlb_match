import 'package:equatable/equatable.dart';
import 'package:sample_match/logic/Data-Models/Internal/BatterPitcherSummary.dart';
import 'package:sample_match/logic/Data-Models/Internal/LineScoreSummary.dart';
import 'package:sample_match/logic/Data-Models/Internal/MatchSummary.dart';

abstract class MatchDetailsEvent extends Equatable {
  @override
  List<Object> get props => [];

   MatchDetailsEvent() : super();
}

class MatchDetailsOnLDataRequest extends MatchDetailsEvent {
  final MatchSummary matchSummary;
  MatchDetailsOnLDataRequest(this.matchSummary);
  @override
  String toString() => 'Match Details Requested';
}

class MatchDetailsDataDownloaded extends MatchDetailsEvent {
  final LineScoreSummary lineScoreSummary;
  final BatterPitcherSummary batterPitcherSummary;

  MatchDetailsDataDownloaded({
    this.lineScoreSummary,
    this.batterPitcherSummary
  }) : super();

  @override
  String toString() =>
      'Match Details Downloaded';
}