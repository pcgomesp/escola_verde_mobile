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
          menuOption("Atividades", allChildren: [
            subMenuOption('Extensão'),
            subMenuOption('Pesquisa'),
            subMenuOption('Ensino'),
            subMenuOption('Produtos'),
            subMenuOption('Galeria de Fotos')
          ]),
          const Padding(padding: EdgeInsets.only(top: 7.0)),
          menuOption('Eventos', allChildren: [
            subMenuOption('Certificados'),
            subMenuOption('Promovidos pelo PEV')
          ]),
          const Padding(padding: EdgeInsets.only(top: 7.0)),
          menuOption('Institucional', allChildren: [
            subMenuOption('Programa Escola Verde'),
            subMenuOption('Revista Verde'),
            subMenuOption('Estágio'),
            subMenuOption('Grupo de Pesquisa'),
            subMenuOption('Núcleo Temático'),
            subMenuOption('Sala Verde'),
          ]),
          const Padding(padding: EdgeInsets.only(top: 7.0)),
          menuOption('Locais Visitados', allChildren: [
            subMenuOption('Juazeiro'),
            subMenuOption('Petrolina'),
            subMenuOption('Curaçá'),
            subMenuOption('São Raimundo Nonato'),
            subMenuOption('Sobradinho'),
            subMenuOption('Senhor do Bonfim'),
          ]),
          const Padding(padding: EdgeInsets.only(top: 7.0)),
          menuOption('Notícias', allChildren: [
            subMenuOption('Notícias Atuais'),
            subMenuOption('Notícias Anteriores'),
          ]),
          const Padding(padding: EdgeInsets.only(top: 7.0)),
          ListTile(
            shape: roundedShapeTile(),
            tileColor: MyThemes.colorButton,
            title: const Text('Ensino Verde'),
            titleTextStyle: MyThemes.fontSideMenu(),
            onTap: () {},
          )
        ],
      ),
    );
  }

  RoundedRectangleBorder roundedShapeTile() {
    return const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0)));
  }

  // allChildren: filhos que serão mostrados após tile colapsar no drawer
  ExpansionTile menuOption(menuTitle, {List<Widget> allChildren = const []}) {
    return ExpansionTile(
      collapsedShape: roundedShapeTile(),
      shape: roundedShapeTile(),
      collapsedBackgroundColor: MyThemes.colorButton,
      backgroundColor: MyThemes.colorButton,
      title: Text(menuTitle, style: MyThemes.fontSideMenu()),
      children: allChildren,
    );
  }

  ListTile subMenuOption(subMenuTitle, {void Function()? tap}) {
    return ListTile(
      title: Text(
        subMenuTitle,
        style: MyThemes.fontSideMenu(fontSize: 20),
      ),
      onTap: tap,
    );
  }
}
