import 'package:facebook_interface/domain/entities/user.dart';
import 'package:facebook_interface/shared/components/circle_button.dart';
import 'package:facebook_interface/shared/components/page_bar_navigation.dart';
import 'package:facebook_interface/shared/components/perfil_button_image.dart';
import 'package:facebook_interface/shared/utils/shared_components.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class PageBarNavigationDesktop extends StatelessWidget {
  final List<IconData> icones;
  final int indiceAbaSelecionada;
  final Function(int) onTap;
  final User user;

  const PageBarNavigationDesktop(
      {Key? key,
      required this.icones,
      required this.indiceAbaSelecionada,
      required this.onTap,
      required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 65,
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.black12, offset: Offset(0, 2), blurRadius: 4)
      ]),
      child: Row(
        children: [
          const Expanded(child: SharedComponents.appName),
          Expanded(
              child: PageBarNavigation(
            icones: icones,
            indiceAbaSelecionada: indiceAbaSelecionada,
            onTap: onTap,
            isIndicadorEmbaixo: true,
          )),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              PerfilButtonImage(
                user: user,
                onTap: () {},
              ),
              CircleButton(
                icone: Icons.search,
                iconeTamanho: 30,
                onPressed: () {},
              ),
              CircleButton(
                icone: LineIcons.facebookMessenger,
                iconeTamanho: 30,
                onPressed: () {},
              )
            ],
          )),
        ],
      ),
    );

    // TabBar(
    //   onTap: this.onTap,
    //   tabs: icones
    //       .map((icon) => Tab(
    //             icon: Icon(
    //               icon,
    //               color: Colors.black54,
    //             ),
    //           ))
    //       .toList(),
    // );
  }
}
