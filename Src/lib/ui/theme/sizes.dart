import 'package:flutter/material.dart';

/// Defines the length names supported by the theme.
enum Length {
  zero,

  /// Corresponds to [Lengths.small].
  tiny,

  /// Corresponds to [Lengths.small].
  small,

  /// Corresponds to [Lengths.medium].
  medium,

  /// Corresponds to [Lengths.large].
  large,
}

/// Defines actual lengths used by the theme.
class Lengths {
  /// How many device pixels there are per centimeter.
  static const double devicePixelsPerCentimeter = 38.7953;

  /// How many centimeters there are per point.
  static const double centimetersPerPoint = 0.035;

  /// How many device pixels there are per point.
  static const double devicePixelsPerPoint =
      centimetersPerPoint * devicePixelsPerCentimeter;

  /// A tiny length defined by the theme.
  static const double tiny = 5.0;

  /// A small length defined by the theme.
  static const double small = 15.0;

  /// A medium length defined by the theme.
  static const double medium = 30.0;

  /// A large length defined by the theme.
  static const double large = 60.0;

  /// A xlarge length defined by the theme.
  static const double xlarge = 90.0;
}

/// Provides access to [EdgeInsets] instances.
///
/// This class defines a number of predefined [EdgeInsets] instances via fields such as [smallAll] and
/// [mediumHorizontal]. It also provides a means of creating an [EdgeInsets] with arbitrary lengths for
/// each edge via the [only] method.
class Edges {
  static const EdgeInsets noneAll = const EdgeInsets.all(0.0);

  static const EdgeInsets tinyAll = const EdgeInsets.all(Lengths.tiny);

  static const EdgeInsets tinyHorizontal = const EdgeInsets.symmetric(horizontal: Lengths.tiny);

  static const EdgeInsets tinyVertical = const EdgeInsets.symmetric(vertical: Lengths.tiny);

  static const EdgeInsets smallAll = const EdgeInsets.all(Lengths.small);

  static const EdgeInsets smallHorizontal = const EdgeInsets.symmetric(horizontal: Lengths.small);

  static const EdgeInsets smallVertical = const EdgeInsets.symmetric(vertical: Lengths.small);

  static const EdgeInsets mediumAll = const EdgeInsets.all(Lengths.medium);

  static const EdgeInsets mediumHorizontal = const EdgeInsets.symmetric(horizontal: Lengths.medium);

  static const EdgeInsets mediumVertical = const EdgeInsets.symmetric(vertical: Lengths.medium);

  static const EdgeInsets largeAll = const EdgeInsets.all(Lengths.large);

  static const EdgeInsets largeHorizontal = const EdgeInsets.symmetric(horizontal: Lengths.large);

  static const EdgeInsets largeVertical = const EdgeInsets.symmetric(vertical: Lengths.large);

  static const EdgeInsets xlargeAll = const EdgeInsets.all(Lengths.xlarge);

  static const EdgeInsets xlargeHorizontal = const EdgeInsets.symmetric(horizontal: Lengths.xlarge);

  static const EdgeInsets xlargeVertical = const EdgeInsets.symmetric(vertical: Lengths.xlarge);

  /// Allows an [EdgeInsets] to be created with theme-defined sizes for each edge. This is a convenience that often saves
  /// having to call [EdgeInsets.add], which is more onerous.
  ///
  /// Each edge is assumed to be of length zero, unless otherwise specified. The [vertical] and [horizontal] parameters
  /// can be used to assign to the two corresponding parameters in a single expression. Note that if you assign values to
  /// either of these, you cannot also assign values to the corresponding parameters.
  static EdgeInsets only(
      {Length vertical,
      Length top,
      Length bottom,
      Length horizontal,
      Length left,
      Length right}) {
    assert(horizontal == null || (left == null && right == null),
        "If horizontal is specified, left and right cannot be.");
    assert(vertical == null || (top == null && bottom == null),
        "If vertical is specified, top and bottom cannot be.");

    double _getDimensionFor(Length size) {
      switch (size) {
        case Length.tiny:
          return Lengths.tiny;
        case Length.small:
          return Lengths.small;
        case Length.medium:
          return Lengths.medium;
        case Length.large:
          return Lengths.large;
        default:
          return 0.0;
      }
    }

    top = top ?? vertical;
    bottom = bottom ?? vertical;
    left = left ?? horizontal;
    right = right ?? horizontal;

    return EdgeInsets.only(
        top: _getDimensionFor(top),
        bottom: _getDimensionFor(bottom),
        left: _getDimensionFor(left),
        right: _getDimensionFor(right));
  }
}