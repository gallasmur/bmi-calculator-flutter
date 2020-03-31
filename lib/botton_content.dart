import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'round_icon_button.dart';

class ButtonContent extends StatelessWidget {
  final String textLabel;
  final int number;
  final Function minusButton;
  final Function plusButton;
  final Function minusLongButton;
  final Function plusLongButton;

  ButtonContent(
      {this.textLabel,
      this.number,
      this.minusButton,
      this.plusButton,
      this.minusLongButton,
      this.plusLongButton});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          textLabel,
          style: kLabelTextStyle,
        ),
        Text(
          number.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPress: minusButton,
              onLongPress: minusLongButton,
            ),
            SizedBox(
              width: 15.0,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPress: plusButton,
              onLongPress: plusLongButton,
            ),
          ],
        ),
      ],
    );
  }
}
