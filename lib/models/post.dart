import 'package:facebook_interface/models/user.dart';

class Post {
  User user;
  String descricao;
  String tempoAtras;
  String urlImage;
  int curtidas;
  int comentarios;
  int compartilhamentos;

  Post(
      {required this.user,
      required this.descricao,
      required this.tempoAtras,
      required this.urlImage,
      required this.comentarios,
      required this.compartilhamentos,
      required this.curtidas});
}
