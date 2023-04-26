import 'package:facebook_interface/shared/color_palette.dart';
import 'package:flutter/material.dart';

class SharedComponents {
  SharedComponents._();

  static const Text appName = Text(
    "facebook",
    style: TextStyle(
        color: ColorPalette.azulFacebook,
        fontWeight: FontWeight.bold,
        fontSize: 28,
        letterSpacing: -1.2),
  );
}
