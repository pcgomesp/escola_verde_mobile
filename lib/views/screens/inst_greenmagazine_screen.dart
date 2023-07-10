import 'package:escola_verde_mobile/views/widgets/custom_appbar.dart';
import 'package:escola_verde_mobile/views/widgets/drawer_appbar.dart';
import 'package:flutter/material.dart';
import '../widgets/standard_text_and_link.dart';
import 'package:escola_verde_mobile/themes/my_themes.dart';

class Inst_greenmagazine_screen extends StatelessWidget {
  const Inst_greenmagazine_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECEBE1),
      appBar: const CustomAppBar('Revista Verde'),
      drawer: const DrawerAppbar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10),
                child: Text('A Revista Verde - Green Journal é uma publicação periódica semestral do Programa Escola Verde e do Grupo de Pesquisa em Educação Ambiental Interdisciplinar (CNPq) com o objetivo de contribuir com a divulgação científica de pesquisas e experiências, nacionais e internacionais, de diferentes áreas do conhecimento relacionadas às problemáticas socioambientais e sustentabilidade.\n\n'
                'A submissão de manuscrito ocorre em fluxo contínuo; ou seja, em qualquer período os autores poderão submeter seus artigos com abordagens variadas de áreas distintas do conhecimento sobre temas ambientais e da sustentabilidade. A Revista Verde - Green Journal se assenta numa postura interdisciplinar própria que se concentra sobre abordagens aparentemente distintas, embora bastante próximas na perspectiva socioambiental.\n\n'
                'Ciente deste desafio, a Revista Verde - Green Journal busca apresentar ao público, trabalhos científicos inéditos, relevantes e pertinentes as reflexões ambientais mais atuais; ensejando que possam ir além da comunidade acadêmica, contribuindo com a construção do saber ambiental e as mudanças necessárias para uma sociedade sustentável.',
                style: MyThemes.fontTextBody())
              ),  
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Image.asset(
                  'assets/revista_verde.jpg',
                  width: 230,
                ),
              ),       
              Padding(
                padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10),
                child: const DescriptiveText(
                'Edição Atual - v. 1 n. 3 (2023): Desenvolvimento Rural Sustentável & Impactos Ambientais', //title
                'A terceira edição da Revista Verde - Green Journal com o tema “Desenvolvimento Rural Sustentável & Impactos Ambientais” foi publicada em Março de 2023, com a reunião de importantes trabalhos científicos internacionais. Nesta edição, as abordagens interdisciplinares são ricas de análises que levam o leitor a compreender a relação intrínseca de fenômenos aparentemente independentes.\n\n'
                'Participe, submeta seu manuscrito para publicação!\n\n'
                'Publicado: 2023-03-26',
                "https://revistaverde.escolaverde.org/index.php/revista/issue/view/4/6"),
              ),         
            ]
          )
        )
      )
    );
  }
}
