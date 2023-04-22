import 'package:facebook_interface/shared/color_palette.dart';
import 'package:facebook_interface/shared/components/circle_button.dart';
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
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.orange,
            floating: true,
            centerTitle: false,
            title: const Text(
              "facebook",
              style: TextStyle(
                  color: ColorPalette.azulFacebook,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  letterSpacing: -1.2),
            ),
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
            child: Container(
              color: Colors.green,
              height: 600,
            ),
          )
        ],
      ),
    );
  }
}
