import 'package:facebook_interface/pages/principal.dart';
import 'package:facebook_interface/shared/color_palette.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "facebook",
    theme: ThemeData(scaffoldBackgroundColor: ColorPalette.scaffold),
    debugShowCheckedModeBanner: false,
    home: const Principal(),
  ));
}
