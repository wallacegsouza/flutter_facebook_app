import 'package:facebook_interface/domain/entities/user.dart';
import 'package:facebook_interface/shared/color_palette.dart';
import 'package:facebook_interface/shared/components/perfil_button_image.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ListOptions extends StatelessWidget {
  final User user;
  final List<List> _opcoes = const [
    [LineIcons.userFriends, ColorPalette.azulFacebook, "Amigos"],
    [LineIcons.facebookMessenger, ColorPalette.azulFacebook, "Mensagens"],
    [LineIcons.flag, Colors.orange, "Páginas"],
    [LineIcons.users, ColorPalette.azulFacebook, "Grupos"],
    [Icons.storefront_outlined, ColorPalette.azulFacebook, "Marketplace"],
    [Icons.ondemand_video, Colors.red, "Assistir"],
    [LineIcons.calendar, Colors.deepPurple, "Eventos"],
    [LineIcons.chevronCircleDown, Colors.black45, "Ver mais"],
  ];

  const ListOptions({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        itemCount: 1 + _opcoes.length,
        itemBuilder: (_, indice) {
          if (indice == 0) {
            return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: PerfilButtonImage(user: user, onTap: () {}));
          }
          List item = _opcoes[indice - 1];
          return Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Opcao(
                icone: item[0],
                cor: item[1],
                texto: item[2],
                onTap: () {},
              ));
        });
  }
}

class Opcao extends StatelessWidget {
  final IconData icone;
  final String texto;
  final Color cor;
  final VoidCallback onTap;

  const Opcao(
      {Key? key,
      required this.icone,
      required this.texto,
      required this.cor,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icone,
            color: cor,
            size: 35,
          ),
          const SizedBox(
            width: 4,
          ),
          Flexible(
            child: Text(
              texto,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
