import 'package:facebook_interface/models/user.dart';

class Story {
  User user;
  String urlImage;
  bool foiVisualizado;

  Story(
      {required this.user,
      required this.urlImage,
      this.foiVisualizado = false});
}
