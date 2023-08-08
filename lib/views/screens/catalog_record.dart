import 'package:flutter/material.dart';

import '../../themes/my_themes.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/drawer_appbar.dart';

class CatalogRecord extends StatelessWidget {
  const CatalogRecord({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECEBE1),
      appBar: const CustomAppBar('Ficha Catalográfica'),
      drawer: const DrawerAppbar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Image.asset(
                  'assets/logo_ev.png',
                  width: 170,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Text(
                  "Ficha catalográfica do aplicativo:",
                  style: MyThemes.fontTextTitle(
                      fontSize: 22, textColor: MyThemes.colorTextTitle),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Text(
                  'Título: Escola Verde Mobile'
                  '\n\nWebsite Repositório da Aplicação: github.com/pcgomesp/escola_verde_mobile'
                  '\n\nAutores: Paulo César Pereira Gomes, Eduardo de Oliveira Pereira Ribeiro, Aurélio José Ribeiro Da Silva, '
                  'João Paulo Brites Leopoldo e Prof. Paulo Roberto Ramos (Orientador).'
                  '\n\nPEV - Programa Escola Verde. Núcleo Temático de Educação Ambiental Interdisciplinar.'
                  '\n\nPetrolina (PE), Agosto de 2023.'
                  '\n\nISBN: 978-65-00-76991-3'
                  '\n\nAssuntos: Criação de aplicativo Android para Divulgação e Participação Virtual do Projeto Escola Verde',
                  style: MyThemes.fontTextBody(),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
