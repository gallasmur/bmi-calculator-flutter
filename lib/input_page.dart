import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Card(Color(0xff1d1e33)),
                  ),
                  Expanded(
                    child: Card(Color(0xff1d1e33)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Card(Color(0xff1d1e33)),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Card(Color(0xff1d1e33)),
                  ),
                  Expanded(
                    child: Card(Color(0xff1d1e33)),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class Card extends StatelessWidget {
  Color color;

  Card(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
