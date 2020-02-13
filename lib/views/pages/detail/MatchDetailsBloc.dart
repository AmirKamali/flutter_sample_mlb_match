import 'package:bloc/bloc.dart';
import 'package:sample_match/logic/Data-Models/Internal/MatchSummary.dart';
import 'package:sample_match/logic/Repositories/MatchRepository.dart';
import 'package:sample_match/views/pages/detail/MatchDetailsStates.dart';
import 'MatchDetailsEvents.dart';

class MatchDetailsBloc extends Bloc<MatchDetailsEvent, MatchDetailsState> {
  MatchRepository repository;
  MatchDetailsBloc(this.repository);

  @override
  MatchDetailsState get initialState => MatchDetailsUninitializedState();

  @override
  Stream<MatchDetailsState> mapEventToState(MatchDetailsEvent event) async* {
    
    if (event is MatchDetailsOnLDataRequest) {
      yield MatchDetailsDownloadingState();
      await downloadLineScore(event.matchSummary);
    } else if (event is MatchDetailsDataDownloaded) {
      yield MatchDetailsLineScoreDownloadedState(lineScoreSummary:event.lineScoreSummary,batterPitcherSummary: event.batterPitcherSummary);
    }
  }

  Future downloadLineScore(MatchSummary summary) async {
    var lineScoreSummary = await repository.getLineScore(summary);
    var batterPitcherSummary = await repository.getBatterPitcherSummary(summary);
    this.add(
        MatchDetailsDataDownloaded(
          lineScoreSummary: lineScoreSummary,
          batterPitcherSummary: batterPitcherSummary));
  }
}
