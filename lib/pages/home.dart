import 'package:facebook_interface/data/dados_mock.dart';
import 'package:facebook_interface/domain/entities/post.dart';
import 'package:facebook_interface/shared/components/area_create_post.dart';
import 'package:facebook_interface/shared/components/area_story.dart';
import 'package:facebook_interface/shared/components/circle_button.dart';
import 'package:facebook_interface/shared/components/contact_list.dart';
import 'package:facebook_interface/shared/components/list_options.dart';
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
  // TODO não teve efeito no scroll adicionar esse controller
  final TrackingScrollController _scrollController = TrackingScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Devices(
          desktop: HomeDesktop(scrollController: _scrollController),
          mobile: HomeMobile(scrollController: _scrollController),
        ),
      ),
    );
  }
}

class HomeDesktop extends StatelessWidget {
  final TrackingScrollController scrollController;

  const HomeDesktop({Key? key, required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            flex: 2,
            child: ListOptions(
              user: userAtual,
            )),
        const Spacer(),
        Flexible(
            flex: 5,
            child: CustomScrollView(
              controller: scrollController,
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                  sliver: SliverToBoxAdapter(
                    child: AreaStory(
                      user: userAtual,
                      storys: storys,
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
  final TrackingScrollController scrollController;

  const HomeMobile({Key? key, required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
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
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
          sliver: SliverToBoxAdapter(
            child: AreaStory(
              user: userAtual,
              storys: storys,
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
