import 'package:escola_verde_mobile/themes/my_themes.dart';
import 'package:flutter/material.dart';

class DrawerAppbar extends StatelessWidget {
  const DrawerAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.12,
          ),
          ListTile(
            title: Text("Atividades", style: MyThemes.fontSideMenu()),
          ),
          ListTile(
            title: Text("Eventos", style: MyThemes.fontSideMenu()),
          ),
          ListTile(
            title: Text("Institucional", style: MyThemes.fontSideMenu()),
          ),
          ListTile(
            title: Text("Locais Visitados", style: MyThemes.fontSideMenu()),
          ),
          ListTile(
            title: Text("Notícias", style: MyThemes.fontSideMenu()),
          ),
          ListTile(
            title: Text("Ensino Verde", style: MyThemes.fontSideMenu()),
          ),
          ListTile(
            title: Text("Contatos", style: MyThemes.fontSideMenu()),
          ),
        ],
      ),
    );
  }
}
