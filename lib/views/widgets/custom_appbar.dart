import 'package:escola_verde_mobile/themes/my_themes.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar(this.title, {super.key});

  @override
  Size get preferredSize {
    return const Size.fromHeight(56.0);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: MyThemes.fontTextTitle(fontSize: 24)),
      backgroundColor: MyThemes.colorBars,
      centerTitle: true,
      iconTheme: const IconThemeData(
        size: 35.0,
        color: Colors.white,
      ),
    );
    /* drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: Text("Atividades",
                  style: MyThemes.fontTextTitle(fontSize: 24)),
            ),
            ListTile(
              title:
                  Text("Eventos", style: MyThemes.fontTextTitle(fontSize: 24)),
            ),
            ListTile(
              title: Text("Institucional",
                  style: MyThemes.fontTextTitle(fontSize: 24)),
            ),
            ListTile(
              title: Text("Locais Visitados",
                  style: MyThemes.fontTextTitle(fontSize: 24)),
            ),
            ListTile(
              title:
                  Text("Notícias", style: MyThemes.fontTextTitle(fontSize: 24)),
            ),
            ListTile(
              title: Text("Ensino Verde",
                  style: MyThemes.fontTextTitle(fontSize: 24)),
            ),
            ListTile(
              title:
                  Text("Contatos", style: MyThemes.fontTextTitle(fontSize: 24)),
            ),
          ],
        ),
      ), */
  }
}
