import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function toDoOnTap;

  ReusableCard({@required this.color, this.cardChild, this.toDoOnTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toDoOnTap,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
