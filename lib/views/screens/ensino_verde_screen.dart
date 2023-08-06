import 'package:escola_verde_mobile/views/widgets/custom_appbar.dart';
import 'package:escola_verde_mobile/views/widgets/drawer_appbar.dart';
import 'package:escola_verde_mobile/views/widgets/form_button.dart';
import 'package:escola_verde_mobile/views/widgets/link_button.dart';
import 'package:flutter/material.dart';

import '../../data/links_estaticos.dart';
import '../../themes/my_themes.dart';

class EnsinoVerdeScreen extends StatelessWidget {
  const EnsinoVerdeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Ensino verde'),
      drawer: DrawerAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'O Ensino Verde é uma página vinculada ao Programa Escola Verde (PEV) – '
                'um movimento social de mobilização e transformação pedagógica e colaborativa de escolas e'
                ' comunidades no enfrentamento dos problemas socioambientais – construída com o intuito de'
                'disponibilizar e divulgar conhecimentos científicos sobre o tema meio ambiente e suas várias derivações.'
                'A ideia é que as pessoas tenham acesso a informações de qualidade de uma forma lúdica, fácil e rápida sobre'
                'conteúdos relevantes na atualidade, como por exemplo mudanças climáticas, energias renováveis, descarte de lixo,'
                'coleta seletivo, desenvolvimento sustentável, entre outros.',
                style: MyThemes.fontTextBody(textColor: MyThemes.colorTextBody),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Clique aqui para acessar o site do Ensino Verde!',
                style: MyThemes.fontTextBody(textColor: MyThemes.colorTextBody),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Link_button(
              titulo: links_list[2].titulo,
              imagePath: links_list[2].imagePath,
              url: links_list[2].url,
              imageHeigth: MediaQuery.of(context).size.height * 0.10,
            )
          ],
        ),
      ),
    );
  }
}
