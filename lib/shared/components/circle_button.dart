import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icone;
  final double iconeTamanho;
  final VoidCallback onPressed;

  const CircleButton(
      {Key? key,
      required this.icone,
      required this.iconeTamanho,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      decoration:
          BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icone),
        iconSize: iconeTamanho,
        color: Colors.black,
      ),
    );
  }
}
