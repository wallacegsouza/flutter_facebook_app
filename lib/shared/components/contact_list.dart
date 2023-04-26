import 'package:facebook_interface/domain/entities/user.dart';
import 'package:facebook_interface/shared/components/perfil_button_image.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  final List<User> usuarios;

  const ContactList({Key? key, required this.usuarios}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Expanded(
              child: Text(
            "Contatos",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.grey[700]),
          )),
          IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
        ],
      ),
      Expanded(
          child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 10),
              itemCount: usuarios.length,
              itemBuilder: (_, indice) {
                return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: PerfilButtonImage(
                        user: usuarios[indice], onTap: () {}));
              }))
    ]);
  }
}
