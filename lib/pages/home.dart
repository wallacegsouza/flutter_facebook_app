import 'package:facebook_interface/data/dados_mock.dart';
import 'package:facebook_interface/domain/entities/post.dart';
import 'package:facebook_interface/domain/entities/user.dart';
import 'package:facebook_interface/shared/components/area_create_post.dart';
import 'package:facebook_interface/shared/components/area_story.dart';
import 'package:facebook_interface/shared/components/circle_button.dart';
import 'package:facebook_interface/shared/components/contact_list.dart';
import 'package:facebook_interface/shared/components/post_card.dart';
import 'package:facebook_interface/shared/utils/devices.dart';
import 'package:facebook_interface/shared/utils/shared_components.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Scaffold(
      body: Devices(
        desktop: HomeDesktop(),
        mobile: HomeMobile(),
      ),
    ));
  }
}

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(flex: 2, child: Container(color: Colors.red)),
        const Spacer(),
        Flexible(
            flex: 5,
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                  sliver: SliverToBoxAdapter(
                    child: AreaStory(
                      user: userAtual,
                      storys: Storys,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: AreaCreatePost(
                    user: userAtual,
                  ),
                ),
                SliverList(
                    delegate: SliverChildBuilderDelegate((context, index) {
                  Post postagem = postagens[index];
                  return PostCard(postagem: postagem);
                }, childCount: postagens.length))
              ],
            )),
        const Spacer(),
        Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: ContactList(usuarios: usersOnline),
            ))
      ],
    );
  }
}

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          floating: true,
          centerTitle: false,
          title: SharedComponents.appName,
          actions: [
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
        ),
        SliverToBoxAdapter(
          child: AreaCreatePost(
            user: userAtual,
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
          sliver: SliverToBoxAdapter(
            child: AreaStory(
              user: userAtual,
              storys: Storys,
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          Post postagem = postagens[index];
          return PostCard(postagem: postagem);
        }, childCount: postagens.length))
      ],
    );
  }
}
