import 'package:equatable/equatable.dart';
import 'MatchList.dart';

abstract class MatchListEvent extends Equatable {
  @override
  List<Object> get props => [];

   MatchListEvent() : super();
}

class OnMatchListRequestEvent extends MatchListEvent {
  OnMatchListRequestEvent();
  @override
  String toString() => 'OnMatchListRequested';
}

class OnMatchListDownloadedEvent extends MatchListEvent {
  final List<MatchSummary> gameSummary;

  OnMatchListDownloadedEvent({
    this.gameSummary,
  }) : super();

  @override
  String toString() =>
      'OnMatchListDownloaded { total gameSummary: ${gameSummary.length} }';
}
