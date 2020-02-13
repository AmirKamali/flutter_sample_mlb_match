import 'package:equatable/equatable.dart';
import 'package:sample_match/logic/Data-Models/Internal/BatterPitcherSummary.dart';
import 'package:sample_match/logic/Data-Models/Internal/LineScoreSummary.dart';

abstract class MatchDetailsState extends Equatable {
  @override
  List<Object> get props => null;
}

class MatchDetailsUninitializedState extends MatchDetailsState {
  // waiting to see if the user is authenticated or not on app start.
  @override
  String toString() => 'AppUninitialized';
}

class MatchDetailsDownloadingState extends MatchDetailsState {
  // successfully authenticated
  @override
  String toString() => 'MatchDetails Downloading';
}

class MatchDetailsLineScoreDownloadedState extends MatchDetailsState {
  final LineScoreSummary lineScoreSummary;
  final BatterPitcherSummary batterPitcherSummary;
  MatchDetailsLineScoreDownloadedState({this.lineScoreSummary,this.batterPitcherSummary});
  @override
  String toString() => 'lineScoreSummary Downloaded';
}
