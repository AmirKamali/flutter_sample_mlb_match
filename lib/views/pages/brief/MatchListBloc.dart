import 'package:bloc/bloc.dart';
import 'package:sample_match/logic/Abstracts/NetworkingProvider.dart';
import 'package:sample_match/logic/Repositories/MatchRepository.dart';

import 'MatchList.dart';

class MatchListBloc extends Bloc<MatchListEvent, MatchListState> {
  final NetworkingProvider networkingProvider;
  MatchRepository repository;
  MatchListBloc(this.networkingProvider);
 
  @override
  MatchListState get initialState => MatchListUninitializedState();
  

  @override
  Stream<MatchListState> mapEventToState(MatchListEvent event) async* {
    //print("event ");
    
    if (event is OnMatchListRequestEvent) {
        yield MatchListDownloadingState();
        await downloadMatchList();
      
    }else if (event is OnMatchListDownloadedEvent){
      yield MatchListDownloadedState(event.gameSummary);
    }
    
  }
  Future downloadMatchList() async{
    var matchSummary = await repository.getMatchList();
    this.add(OnMatchListDownloadedEvent(gameSummary: matchSummary));
  }
}
