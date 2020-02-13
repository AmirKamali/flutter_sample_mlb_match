import 'package:flutter/material.dart';
import 'package:sample_match/logic/Abstracts/NetworkingProvider.dart';
import 'package:sample_match/logic/Providers/AppNetworkingProvider.dart';
import 'package:sample_match/views/pages/detail/MatchDetails.dart';
import 'views/pages/brief/MatchListPage.dart';
import 'main.reflectable.dart';
import 'package:reflectable/reflectable.dart';

void main() {
  initializeReflectable();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final NetworkingProvider _networkingProvider = AppNetworkingProvider();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MatchListPage(
          networkingProvider: _networkingProvider,
        ));
  }
}
