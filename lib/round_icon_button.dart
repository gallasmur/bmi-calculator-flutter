import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;
  final Function onLongPress;

  RoundIconButton({this.icon, this.onPress, this.onLongPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: onLongPress,
      child: RawMaterialButton(
        onPressed: onPress,
        child: Icon(icon),
        elevation: 6.0,
        constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        shape: CircleBorder(),
        fillColor: Color(0xff4c4f5e),
      ),
    );
  }
}
