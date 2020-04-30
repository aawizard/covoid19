import 'package:flutter/material.dart';
class Details extends StatelessWidget {
  const Details({this.text, this.newCase, this.oldCase, this.textColour});
  final String text;
  final int newCase;
  final int oldCase;
  final Color textColour;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
          child: Text(
            oldCase.toString(),
            style: TextStyle(
              color: textColour,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.arrow_upward,
              color: textColour,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: Text(
                newCase.toString(),
                style: TextStyle(color: textColour),
              ),
            )
          ],
        )
      ],
    );
  }
}
