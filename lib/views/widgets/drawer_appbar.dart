import 'package:escola_verde_mobile/themes/my_themes.dart';
import 'package:escola_verde_mobile/views/screens/act_extension_screen.dart';
import 'package:escola_verde_mobile/views/screens/act_research_screen.dart';
import 'package:escola_verde_mobile/views/screens/catalog_record.dart';
import 'package:escola_verde_mobile/views/screens/inst_greenmagazine_screen.dart';
import 'package:escola_verde_mobile/views/screens/inst_greenroom_screen.dart';
import 'package:escola_verde_mobile/views/screens/inst_internship_screen.dart';
import 'package:escola_verde_mobile/views/screens/inst_program_screen.dart';
import 'package:escola_verde_mobile/views/screens/event_certificate_screen.dart';
import 'package:flutter/material.dart';

import '../screens/activity_screen.dart';
import '../screens/ensino_verde_screen.dart';
import '../screens/inst_nucleus_screen.dart';
import '../screens/inst_group_screen.dart';
import '../screens/mysql_news.dart';

class DrawerAppbar extends StatelessWidget {
  const DrawerAppbar({super.key});

  // Olá Futuro colaborador, tudo bem?
  // Neste drawer, os comentários são referentes a páginas do site escolaverde.org que inicialmente foi pensado em
  // ser incluído no escopo do aplicativo, mas, que por motivos de tempo e afins, acabaram não sendo.
  // Sinta-se à vontade de incluílas e, posteriormente, colocar a referência neste widget.

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
            subMenuOption('Geral', tap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const activity_screen()));
            }),
            subMenuOption('Extensão', tap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ActExtensionScreen()));
            }),
            subMenuOption('Pesquisa', tap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ActResearchScreen()));
            }),
            /* subMenuOption('Ensino'),
            subMenuOption('Produtos'),
            subMenuOption('Galeria de Fotos'), */
          ]),
          const Padding(padding: EdgeInsets.only(top: 7.0)),
          menuOption('Eventos', allChildren: [
            subMenuOption('Certificados', tap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Event_certificate_screen()));
            }),
            /* subMenuOption('Promovidos pelo PEV'), */
          ]),
          const Padding(padding: EdgeInsets.only(top: 7.0)),
          menuOption('Institucional', allChildren: [
            subMenuOption('Programa Escola Verde', tap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Inst_program_screen()));
            }),
            subMenuOption('Revista Verde', tap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Inst_greenmagazine_screen()));
            }),
            subMenuOption('Estágio', tap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Inst_internship_screen()));
            }),
            subMenuOption('Grupo de Pesquisa', tap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Inst_group_screen()));
            }),
            subMenuOption('Núcleo Temático', tap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Inst_nucleus_screen()));
            }),
            subMenuOption('Sala Verde', tap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Inst_greenroom_screen()));
            }),
          ]),
          /* const Padding(padding: EdgeInsets.only(top: 7.0)),
          menuOption('Locais Visitados', allChildren: [
            subMenuOption('Juazeiro'),
            subMenuOption('Petrolina'),
            subMenuOption('Curaçá'),
            subMenuOption('São Raimundo Nonato'),
            subMenuOption('Sobradinho'),
            subMenuOption('Senhor do Bonfim'),
          ]), */
          const Padding(padding: EdgeInsets.only(top: 7.0)),
          menuOption('Notícias', allChildren: [
            subMenuOption('Notícias Atuais', tap: () {
              Navigator.pop(context);
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const MySQLNews()));
            }),
            //subMenuOption('Notícias Anteriores'),
          ]),
          const Padding(padding: EdgeInsets.only(top: 7.0)),
          ListTile(
            shape: roundedShapeTile(),
            tileColor: MyThemes.colorButton,
            title: const Text('Ensino Verde'),
            titleTextStyle: MyThemes.fontSideMenu(),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const EnsinoVerdeScreen()));
            },
          ),
          const Padding(padding: EdgeInsets.only(top: 7.0)),
          ListTile(
            shape: roundedShapeTile(),
            tileColor: MyThemes.colorButton,
            title: const Text('Sobre'),
            titleTextStyle: MyThemes.fontSideMenu(),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const CatalogRecord()));
            },
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
