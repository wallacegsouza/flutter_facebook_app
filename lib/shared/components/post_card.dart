import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface/shared/color_palette.dart';
import 'package:facebook_interface/shared/components/perfil_image.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../../domain/entities/post.dart';

class PostCard extends StatelessWidget {
  final Post postagem;

  const PostCard({Key? key, required this.postagem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          //Cabeçalho
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PostHeader(postagem: postagem),
                  Text(postagem.descricao),
                ],
              )),
          //Corpo
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: CachedNetworkImage(
                imageUrl: postagem.urlImage,
              )),
          //rodapé
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: PostFooter(
              postagem: postagem,
            ),
          )
        ],
      ),
    );
  }
}

class PostHeader extends StatelessWidget {
  final Post postagem;

  const PostHeader({Key? key, required this.postagem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PerfilImage(
          urlImage: postagem.user.urlImage,
          isVisualized: true,
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              postagem.user.nome,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text(
                  "${postagem.tempoAtras} -",
                ),
                Icon(
                  Icons.public,
                  size: 20,
                  color: Colors.grey[600],
                )
              ],
            )
          ],
        )),
        IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
      ],
    );
  }
}

class PostFooter extends StatelessWidget {
  final Post postagem;

  const PostFooter({Key? key, required this.postagem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                  color: ColorPalette.azulFacebook, shape: BoxShape.circle),
              child: const Icon(
                Icons.thumb_up,
                size: 10,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Expanded(
                child: Text(
              "${postagem.curtidas}",
              style: TextStyle(color: Colors.grey[700]),
            )),
            Text(
              "${postagem.comentarios} comentários",
              style: TextStyle(color: Colors.grey[700]),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              "${postagem.compartilhamentos} compartilhamentos",
              style: TextStyle(color: Colors.grey[700]),
            )
          ],
        ),
        const Divider(
          thickness: 1.2,
        ),
        Row(
          children: [
            PostButton(
                icon: Icon(LineIcons.thumbsUpAlt, color: Colors.grey[700]),
                descricao: "Curtir",
                onTap: () {}),
            PostButton(
                icon: Icon(LineIcons.alternateCommentAlt,
                    color: Colors.grey[700]),
                descricao: "Comentar",
                onTap: () {}),
            PostButton(
                icon: Icon(LineIcons.thumbsUpAlt, color: Colors.grey[700]),
                descricao: "Compartilhar",
                onTap: () {})
          ],
        )
      ],
    );
  }
}

class PostButton extends StatelessWidget {
  final Icon icon;
  final String descricao;
  final VoidCallback onTap;

  const PostButton(
      {Key? key,
      required this.icon,
      required this.descricao,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Material(
            child: InkWell(
      onTap: onTap,
      child: Container(
        child: Row(
          children: [
            icon,
            const SizedBox(
              width: 4,
            ),
            Text(
              descricao,
              style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    )));
  }
}
