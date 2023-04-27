import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface/data/dados_mock.dart';
import 'package:facebook_interface/domain/entities/story.dart';
import 'package:facebook_interface/domain/entities/user.dart';
import 'package:facebook_interface/shared/color_palette.dart';
import 'package:facebook_interface/shared/components/perfil_image.dart';
import 'package:facebook_interface/shared/utils/devices.dart';
import 'package:flutter/material.dart';

class AreaStory extends StatelessWidget {
  final User user;
  final List<Story> storys;
  final Story _addStory = Story(user: userAtual, urlImage: userAtual.urlImage);

  AreaStory({Key? key, required this.user, required this.storys})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop = Devices.isDesktop(context);
    return Container(
      height: 200,
      color: isDesktop ? Colors.transparent : Colors.white,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + storys.length, // 1 + 8 = 9 itens
          itemBuilder: (context, idx) {
            if (idx == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: StoryCard(
                  story: _addStory,
                  addStory: true,
                ),
              );
            }
            Story story = storys[idx - 1];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: StoryCard(
                story: story,
              ),
            );
          }),
    );
  }
}

class StoryCard extends StatelessWidget {
  final Story story;
  final bool addStory;

  const StoryCard({Key? key, required this.story, this.addStory = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
              imageUrl: story.urlImage,
              height: double.infinity,
              width: 110,
              fit: BoxFit.cover),
        ),
        Container(
          height: double.infinity,
          width: 110,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: ColorPalette.gradientStory),
        ),
        Positioned(
            top: 8,
            left: 8,
            child: addStory
                ? Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: const Icon(Icons.add),
                      iconSize: 30,
                      color: ColorPalette.azulFacebook,
                      onPressed: () {},
                    ),
                  )
                : PerfilImage(
                    urlImage: story.user.urlImage,
                    isVisualized: story.isVisualized,
                  )),
        Positioned(
            bottom: 8,
            left: 8,
            right: 8,
            child: Text(
              addStory ? "Create Story" : story.user.nome,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ))
      ],
    );
  }
}
