import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sample_match/external/flutter_staggered_grid_view/src/widgets/staggered_grid_view.dart';
import 'package:sample_match/external/flutter_staggered_grid_view/src/widgets/staggered_tile.dart';

class MatchScoreTable extends StatelessWidget {
  const MatchScoreTable({Key key,this.items,this.crossAxisCount,this.padding,this.boldIndexes}) : super(key: key);
  final List<String> items ;
  final List<int> boldIndexes;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        child: _buildGridView(context),
        height: ((items.length/crossAxisCount) * 35).roundToDouble(),
      ),
    );
  }

  static const EdgeInsetsGeometry _padding =
      const EdgeInsets.symmetric(horizontal: 4.0);

  final int crossAxisCount;
  final double mainAxisSpacing = 1;
  final double crossAxisSpacing = 1;

  Widget _buildGridView(BuildContext context) {
    return new StaggeredGridView.countBuilder(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: crossAxisCount + 1,
      itemCount: items.length,
      itemBuilder: _getTableChild,
      mainAxisSpacing: mainAxisSpacing,
      crossAxisSpacing: crossAxisSpacing,
      padding: padding ?? _padding,
      staggeredTileBuilder: _getStaggeredTile,
    );
  }

  StaggeredTile _getStaggeredTile(int i) {
    if (i % (crossAxisCount) ==  0){
      return StaggeredTile.count(2, 1);
    }else {
      return StaggeredTile.count(1, 1);
    }
    
  }

  Widget _getTableChild(BuildContext context, int index) {
    if (index % (crossAxisCount) == 0) {
      return new TeamTileWidget(
          key: new ObjectKey(index),
          value: items[index],
          backgroundColor: Colors.grey[300],
          textStyle: TextStyle(fontSize: 10,),);
    } else {
      return new ScoreTileWidget(
        key: new ObjectKey(index),
        value: items[index],
        backgroundColor: Colors.green,
        isBold: isBoldTile(index),
      );
    }
  }

  bool isBoldTile(int index) {
    return boldIndexes.contains(index);
  }

}

class TeamTileWidget extends StatelessWidget {
  const TeamTileWidget(
      {Key key, @required this.value, this.backgroundColor: Colors.grey,this.textStyle})
      : super(key: key);
  final TextStyle textStyle;
  final String value;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return new Container(
      alignment: Alignment(-1,0),
      color: this.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(left:4.0),
        child: new Text(value,style: textStyle,overflow: TextOverflow.clip,),
      ),
    );
  }
}

class ScoreTileWidget extends StatelessWidget {
  const ScoreTileWidget(
      {Key key,
      @required this.value,
      this.backgroundColor: Colors.green,
      this.isBold})
      : super(key: key);

  final String value;
  final Color backgroundColor;
  final bool isBold;
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: this.backgroundColor,
      child: new Center(
          child: new Text(
        value,
        style: getTextStyle(isBold),
      )),
    );
  }

  TextStyle getTextStyle(bool isBold) {
    if (isBold) {
      return TextStyle(fontWeight: FontWeight.w700);
    }
    return null;
  }
}
