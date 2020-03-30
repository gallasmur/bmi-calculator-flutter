import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color backgroundColor = Color(0xff1d1e33);
const double heightBottomContainer = 80.0;
const Color backgroundBottomColor = Color(0xffeb1555);

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
                    child: Card(
                      color: backgroundColor,
                      cardChild: IconContent(FontAwesomeIcons.mars, 'MALE'),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      color: backgroundColor,
                      cardChild: IconContent(FontAwesomeIcons.venus, 'FEMALE'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Card(color: backgroundColor),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Card(color: backgroundColor),
                  ),
                  Expanded(
                    child: Card(color: backgroundColor),
                  ),
                ],
              ),
            ),
            Container(
              color: backgroundBottomColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: heightBottomContainer,
            )
          ],
        ));
  }
}

class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;

  IconContent(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          this.icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          this.text,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xff8d8e98),
          ),
        )
      ],
    );
  }
}

class Card extends StatelessWidget {
  final Color color;
  final Widget cardChild;

  Card({@required this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
