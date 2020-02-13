import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sample_match/views/pages/detail/MatchDetails.dart';

import 'external/flutter_staggered_grid_view/src/widgets/staggered_grid_view.dart';
import 'external/flutter_staggered_grid_view/src/widgets/staggered_tile.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MatchScoreTable(items: _testHittingList,crossAxisCount: 5,)
    );
  }
  List<String> get _testHittingList {
    return [
      // Header
      "Hitters", "AB", "R", "H", "RBI",
      // R1
      "T.Turners SS", "4", "0", "0", "0",
      "T.Turners SS", "4", "0", "0", "0",
      "T.Turners SS", "4", "0", "0", "0",
      "T.Turners SS", "4", "0", "0", "0",
      "T.Turners SS", "4", "0", "0", "0",
      "T.Turners SS", "4", "0", "0", "0",
      // R2
      "TEAM", "34", "6", "9", "6",
    ];
  }
}
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: new StaggeredGridView.countBuilder(
//   crossAxisCount: 18,
//   itemCount: 28,
//   itemBuilder: (BuildContext context, int index) => new Container(
//       color: Colors.green,
//       child: new Center(
//         child: new CircleAvatar(
//           backgroundColor: Colors.white,
//           child: new Text('$index'),
//         ),
//       )),
//   staggeredTileBuilder: (int index) =>
//       new StaggeredTile.count(2,  1),
//   mainAxisSpacing: 4.0,
//   crossAxisSpacing: 4.0,
// ),
//     );
//   }
// }
