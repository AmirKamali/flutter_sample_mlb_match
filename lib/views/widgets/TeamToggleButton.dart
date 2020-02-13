import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TeamToggleButton extends StatelessWidget {
  TeamToggleButton({Key key, this.selectedIndex, this.onIndexChanged})
      : super(key: key);
  final void Function(int) onIndexChanged;
  static const double cornerRadius = 40;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            teamButton("Team A", true, 0),
            SizedBox(
              height: 1,
              width: 1,
            ),
            teamButton("Team B", false, 1)
          ]),
    );
  }

  Widget teamButton(String text, bool isLeft, int value) {
    return GestureDetector(
      onTap: () {
        onIndexChanged(value);
      },
      child: Container(
        width: 90,
        alignment: Alignment(0.0, 0.0),
        decoration: isLeft
            ? leftBoxDecoration(0 == selectedIndex)
            : rightBoxDecoration(1 == selectedIndex),
        child: Text(text),
      ),
    );
  }

  BoxDecoration rightBoxDecoration(bool isSelected) {
    return BoxDecoration(
        color: isSelected ? Colors.green : Colors.white,
        borderRadius: new BorderRadius.only(
            bottomRight: const Radius.circular(TeamToggleButton.cornerRadius),
            topRight: const Radius.circular(TeamToggleButton.cornerRadius)),
        border: Border.all(
            color: Colors.grey[400], // set border color
            width: 1.0));
  }

  BoxDecoration leftBoxDecoration(bool isSelected) {
    return BoxDecoration(
        color: isSelected ? Colors.green : Colors.white,
        borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(TeamToggleButton.cornerRadius),
            bottomLeft: const Radius.circular(TeamToggleButton.cornerRadius)),
        border: Border.all(
            color: Colors.grey[400], // set border color
            width: 1.0));
  }
}
