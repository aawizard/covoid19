import 'package:flutter/material.dart';

const kbackgroundImage = BoxDecoration(
  image: DecorationImage(
    image: AssetImage('images/corona.jpg'),
    fit: BoxFit.cover,
    colorFilter: ColorFilter.mode(
     Colors.red,
            BlendMode.dstATop,
   ),
  ),
);
const kCardHeading=TextStyle(
  fontSize: 30.0,
  fontWeight: FontWeight.w900,
);