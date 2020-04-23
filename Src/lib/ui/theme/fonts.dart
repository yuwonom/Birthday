import 'package:flutter/material.dart';

import '../theme.dart' as theme;

class Styles {
  static const TextStyle h4 = const TextStyle(
    fontFamily: 'Roboto',
    fontSize: 35.5 * theme.Lengths.devicePixelsPerPoint,
    letterSpacing: 0.25,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  static const TextStyle h6 = const TextStyle(
    fontFamily: 'Roboto',
    fontSize: 21 * theme.Lengths.devicePixelsPerPoint,
    letterSpacing: 0.25,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w900,
    color: Colors.black,
  );

  static const TextStyle title = const TextStyle(
    fontFamily: 'Roboto',
    fontSize: 22.0 * theme.Lengths.devicePixelsPerPoint,
    letterSpacing: 0.25,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    color: theme.Colors.black,
  );

  static const TextStyle subtitle1 = const TextStyle(
    fontFamily: 'Roboto',
    fontSize: 19 * theme.Lengths.devicePixelsPerPoint,
    letterSpacing: 0.15,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w900,
    color: Colors.black,
  );

  static const TextStyle subtitle2 = const TextStyle(
    fontFamily: 'Roboto',
    fontSize: 17 * theme.Lengths.devicePixelsPerPoint,
    letterSpacing: 0.1,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w900,
    color: Colors.black,
  );

  static const TextStyle body1 = const TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16.5 * theme.Lengths.devicePixelsPerPoint,
    letterSpacing: 0.5,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    color: Colors.black,
    height: 1.25,
  );

  static const TextStyle body2 = const TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14.0 * theme.Lengths.devicePixelsPerPoint,
    letterSpacing: 0.25,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    color: Colors.black,
    height: 1.25,
  );

  static const TextStyle caption = const TextStyle(
    fontFamily: 'Roboto',
    fontSize: 12.0 * theme.Lengths.devicePixelsPerPoint,
    letterSpacing: 0.4,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle button = const TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14.4 * theme.Lengths.devicePixelsPerPoint,
    letterSpacing: 1.25,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
}