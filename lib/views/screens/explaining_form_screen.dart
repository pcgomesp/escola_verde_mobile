import 'package:escola_verde_mobile/views/widgets/custom_appbar.dart';
import 'package:escola_verde_mobile/views/widgets/drawer_appbar.dart';
import 'package:escola_verde_mobile/views/widgets/form_button.dart';
import 'package:flutter/material.dart';

import '../../themes/my_themes.dart';

class ExpFormScreen extends StatelessWidget {
  const ExpFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('Envie Sua Notícia!'),
      drawer: const DrawerAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Quer colaborar com o movimento Escola Verde? Agora você também pode! \n'
                'Queremos saber sobre suas experiências, conquistas e iniciativas relacionadas à temática ambiental. Para isso,'
                'disponibilizamos um formulário especialmente para vocês enviarem suas notícias. '
                'Compartilhe conosco projetos realizados, eventos, curiosidades, boas práticas e tudo mais que esteja relacionado à Educação Ambiental.'
                '\nO formulário está disponibilizado logo abaixo!',
                style: MyThemes.fontTextBody(textColor: MyThemes.colorTextBody),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const FormButton(),
          ],
        ),
      ),
    );
  }
}
