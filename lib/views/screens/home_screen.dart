import 'dart:ffi' as size;

import 'package:escola_verde_mobile/views/screens/activity_screen.dart';
import 'package:escola_verde_mobile/views/screens/contact_screen.dart';
import 'package:escola_verde_mobile/views/screens/form_screen.dart';
import 'package:escola_verde_mobile/views/screens/news_screen.dart';
import 'package:escola_verde_mobile/views/widgets/home_button.dart';
import 'package:escola_verde_mobile/views/widgets/home_who_button.dart';
import 'package:flutter/material.dart';
import 'package:escola_verde_mobile/themes/my_themes.dart';

import 'links_sceen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double heightColapse = MediaQuery.of(context).size.height * 0.08;
    return Scaffold(
        backgroundColor: MyThemes.colorBars,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              collapsedHeight: heightColapse <= 56 ? 56 : heightColapse,
              floating: true,
              primary: true,
              pinned: true,
              elevation: 0,
              centerTitle: true,
              backgroundColor: MyThemes.colorBars,
              expandedHeight:
                  MediaQuery.of(context).size.height * 0.28, //tamanho
              flexibleSpace: FlexibleSpaceBar(
                  titlePadding: const EdgeInsets.only(top: 3),
                  centerTitle: true,
                  expandedTitleScale: 1.2,
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Bem-vindo ao \nEscola Verde Mobile',
                        style: MyThemes.fontTextTitle(fontSize: 30),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  background: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/texture_fundo.png'),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          right: MediaQuery.of(context).size.width * 0.03,
                          child: Image.asset(
                            'assets/bcg_plants.png',
                            height: MediaQuery.of(context).size.height * 0.16,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.08,
                              ),
                              /*Text(
                                'Bem-vindo ao \nEscola Verde Mobile',
                                style: MyThemes.fontTextTitle(fontSize: 38),
                              ),*/
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            ),
            SliverToBoxAdapter(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.07),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        HomeWhoButton(),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.08,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            HomeButton(
                                titulo: 'Atividades',
                                imagePath: 'assets/atividades.png',
                                imageHeigth:
                                    MediaQuery.of(context).size.height * 0.105,
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => activity_screen()));
                                }),
                            HomeButton(
                                titulo: 'Eventos',
                                imagePath: 'assets/eventos.png',
                                imageHeigth:
                                    MediaQuery.of(context).size.height * 0.09,
                                onTap: () {
                                  Navigator.pushNamed(context, '/event-screen');
                                }),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.08,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            HomeButton(
                                titulo: 'Notícias',
                                imagePath: 'assets/noticias.png',
                                imageHeigth:
                                    MediaQuery.of(context).size.height * 0.11,
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => News_screen()));
                                }),
                            HomeButton(
                                titulo: 'Contatos',
                                imagePath: 'assets/contatos.png',
                                imageHeigth:
                                    MediaQuery.of(context).size.height * 0.09,
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Contact_screen()));
                                }),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.08,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            HomeButton(
                                titulo: 'Locais Visitados',
                                imagePath: 'assets/visitados.png',
                                imageHeigth:
                                    MediaQuery.of(context).size.height * 0.11,
                                onTap: () {}),
                            HomeButton(
                                titulo: 'Ensino Verde',
                                imagePath: 'assets/ensino_verde.png',
                                imageHeigth:
                                    MediaQuery.of(context).size.height * 0.11,
                                onTap: () {}),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.08,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            HomeButton(
                                titulo: 'Links Uteis',
                                imagePath: 'assets/links_uteis.png',
                                imageHeigth:
                                    MediaQuery.of(context).size.height * 0.11,
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Links_screen()));
                                }),
                            HomeButton(
                                titulo: 'Formulario',
                                imagePath: 'assets/foms2.png',
                                imageHeigth:
                                    MediaQuery.of(context).size.height * 0.11,
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Form_screen()));
                                }),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.08,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
