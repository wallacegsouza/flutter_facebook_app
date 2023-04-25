import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface/shared/color_palette.dart';
import 'package:flutter/material.dart';

class PerfilImage extends StatelessWidget {
  final String urlImage;
  final bool isVisualized;

  const PerfilImage(
      {Key? key, required this.urlImage, this.isVisualized = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: ColorPalette.azulFacebook,
      child: CircleAvatar(
        radius: isVisualized ? 22 : 18,
        backgroundImage: CachedNetworkImageProvider(urlImage),
        backgroundColor: Colors.grey[200],
      ),
    );
  }
}
