import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covoid19/utilites/constants.dart';
class WashHands extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wash Hands Properly'),
      ),
      body: Container(
        decoration:kbackgroundImage ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[


            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(child: Image.asset('images/hand1.jpg'),),
                  Expanded(child: Image.asset('images/hand2.jpg'),),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(child: Image.asset('images/hand3.jpg'),),
                  Expanded(child: Image.asset('images/hand4.jpg'),),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(child: Image.asset('images/hand5.jpg'),),
                  Expanded(child: Image.asset('images/hand6.jpg'),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
