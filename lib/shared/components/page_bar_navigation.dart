import 'package:facebook_interface/shared/color_palette.dart';
import 'package:flutter/material.dart';

class PageBarNavigation extends StatelessWidget {
  final List<IconData> icones;
  final int indiceAbaSelecionada;
  final Function(int) onTap;
  final bool isIndicadorEmbaixo;

  const PageBarNavigation(
      {Key? key,
      required this.icones,
      required this.indiceAbaSelecionada,
      required this.onTap,
      required this.isIndicadorEmbaixo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: onTap,
      indicator: BoxDecoration(
          border: isIndicadorEmbaixo
              ? const Border(
                  bottom:
                      BorderSide(color: ColorPalette.azulFacebook, width: 3))
              : const Border(
                  top: BorderSide(color: ColorPalette.azulFacebook, width: 3))),
      tabs: icones
          .asMap()
          .map((indice, icone) => MapEntry(
              indice,
              Tab(
                icon: Icon(icone,
                    color: indiceAbaSelecionada == indice
                        ? ColorPalette.azulFacebook
                        : Colors.black54,
                    size: 30),
              )))
          .values
          .toList(),
    );
  }
}
