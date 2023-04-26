import 'package:facebook_interface/shared/components/perfil_image.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/user.dart';

class PerfilButtonImage extends StatelessWidget {
  final User user;
  final VoidCallback onTap;

  const PerfilButtonImage({Key? key, required this.user, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          PerfilImage(urlImage: user.urlImage, isVisualized: true),
          const SizedBox(
            width: 4,
          ),
          Flexible(
            child: Text(
              overflow: TextOverflow.ellipsis,
              user.nome,
              style: const TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
