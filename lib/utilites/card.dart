import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'details.dart';
import 'constants.dart';
class CardReuse extends StatelessWidget {
  CardReuse(
      {@required this.cardName,
      this.oldCasesConfirmed,
      this.newCasesConfirmed,
      this.oldCasesRecovered,
      this.newCasesRecovered,
      this.oldCasesDead,
      this.newCasesDead});
  final cardName;
  final int oldCasesConfirmed;
  final int newCasesConfirmed;
  final int oldCasesRecovered;
  final int newCasesRecovered;
  final int oldCasesDead;
  final int newCasesDead;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment(0, 0),
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Text(
                cardName,
                style: kCardHeading,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Details(
                  text: 'Confirmed',
                  oldCase: oldCasesConfirmed,
                  newCase: newCasesConfirmed,
                  textColour: Colors.red,
                ),
                Details(
                  text: 'Recovered',
                  oldCase: oldCasesRecovered,
                  newCase: newCasesRecovered,
                  textColour: Colors.green,
                ),
                Details(
                  text: 'Dead',
                  oldCase: oldCasesDead,
                  newCase: newCasesDead,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

