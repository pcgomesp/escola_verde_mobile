import 'package:flutter/material.dart';
import 'package:escova_verde_mobile/themes/my_themes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyThemes.colorBars,
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      right: MediaQuery.of(context).size.width * 0.05,
                      child: Image.asset(
                        'assets/bcg_plants.png',
                        height: 135,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Bem-vindo ao \nEscola Verde Mobile',
                        style: MyThemes.fontTextTitle(fontSize: 38),
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
              )),
        ],
      ),
    );
  }
}
