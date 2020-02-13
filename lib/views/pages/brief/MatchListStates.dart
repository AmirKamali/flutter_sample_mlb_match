import 'package:equatable/equatable.dart';
import 'package:sample_match/logic/Data-Models/Internal/MatchSummary.dart';

abstract class MatchListState extends Equatable {
  @override
  List<Object> get props => null;
}

class MatchListUninitializedState extends MatchListState {
  // waiting to see if the user is authenticated or not on app start.
  @override
  String toString() => 'AppUninitialized';
}

class MatchListDownloadingState extends MatchListState {
  // successfully authenticated
  @override
  String toString() => 'MatchListDownloading';
}

class MatchListDownloadedState extends MatchListState {
  final List<MatchSummary> gameSummary;
  MatchListDownloadedState(this.gameSummary);
  @override
  String toString() => 'MatchListDownloaded';
}
