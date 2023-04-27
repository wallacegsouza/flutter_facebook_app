import 'package:facebook_interface/data/dados_mock.dart';
import 'package:facebook_interface/pages/home.dart';
import 'package:facebook_interface/shared/components/page_bar_navigation.dart';
import 'package:facebook_interface/shared/components/page_bar_navigation_desktop.dart';
import 'package:facebook_interface/shared/utils/devices.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  final List<Widget> _pages = [
    const Home(),
    const Scaffold(
      backgroundColor: Colors.green,
    ),
    const Scaffold(
      backgroundColor: Colors.yellow,
    ),
    const Scaffold(
      backgroundColor: Colors.purple,
    ),
    const Scaffold(
      backgroundColor: Colors.black54,
    ),
    const Scaffold(
      backgroundColor: Colors.orange,
    )
  ];
  final List<IconData> _icones = [
    Icons.home,
    Icons.ondemand_video,
    Icons.storefront_outlined,
    Icons.flag_outlined,
    LineIcons.bell,
    Icons.menu
  ];

  int _indiceAbaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Devices.isDesktop(context);
    Size tamanho = MediaQuery.of(context).size;

    return DefaultTabController(
        length: _icones.length,
        child: Scaffold(
          appBar: isDesktop
              ? PreferredSize(
                  preferredSize: Size(tamanho.width, 65),
                  child: PageBarNavigationDesktop(
                    icones: _icones,
                    indiceAbaSelecionada: _indiceAbaSelecionada,
                    onTap: (idx) {
                      setState(() {
                        _indiceAbaSelecionada = idx;
                      });
                    },
                    user: userAtual,
                  ),
                )
              : null,
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: _pages,
          ),
          bottomNavigationBar: isDesktop
              ? null
              : PageBarNavigation(
                  icones: _icones,
                  indiceAbaSelecionada: _indiceAbaSelecionada,
                  onTap: (idx) {
                    setState(() {
                      _indiceAbaSelecionada = idx;
                    });
                  },
                  isIndicadorEmbaixo: false,
                ),
        ));
  }
}
