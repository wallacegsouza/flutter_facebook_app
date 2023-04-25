import 'package:facebook_interface/domain/entities/user.dart';

class Story {
  User user;
  String urlImage;
  bool isVisualized;

  Story(
      {required this.user, required this.urlImage, this.isVisualized = false});
}
