import 'package:flutter/material.dart';
import 'package:escova_verde_mobile/themes/my_themes.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});
      
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'O Projeto',
          style:
          MyThemes.fontTextTitle(fontSize: 24)
        ),
        centerTitle: true,
        backgroundColor: MyThemes.colorBars,
        leading: IconButton(
          icon:  Icon(Icons.menu),
          iconSize: 35.0,
          onPressed: (){},
        ),
        iconTheme:  IconThemeData(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15), 
              child: Image.asset(
                'assets/logo_ev.png',
                width: 170,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Text(
              'A Educação Ambiental (EA) pode ser desenvolvida e vivenciada de maneiras diferentes, sobretudo nas escolas, onde o ambiente é propício para a aprendizagem, o conhecimento e a mudança de comportamento. Muitas vezes, a promoção da EA nas escolas é dificultada pela pouca institucionalização da questão ambiental nos Projetos Políticos Pedagógicos – PPPs, currículos e outros documentos normativos das instituições; ou pelas limitações dos professores em desenvolver a temática ambiental a partir dos conteúdos disciplinares; ou pela carência de material didático; ou mesmo pela inadequação estrutural e ergonômica das escolas para o desenvolvimento de práticas educativas em EA, colaborando para que as instituições de ensino reproduzam um modelo de comportamento descomprometido com a sustentabilidade socioambiental.',
              style: MyThemes.fontTextBody()
              )
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Image.asset(
                  'assets/about.png',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Text(
                'O objetivo central do Projeto Escola Verde (PEV) é investigar estas dificuldades e promover ações no sentido de minimizar os problemas identificados, a partir da participação das comunidades escolares. Trata-se de uma Pesquisa Aplicada, do tipo Pesquisa-Ação,  de caráter qualiquantitativo, que está sendo desenvolvida nas escolas de ensino fundamental, médio e superior da região do Vale do São Francisco. As atividades de pesquisa servem de embasamento e direcionamento das ações extensivas. São utilizados Formulários aplicados junto aos gestores escolares, bem como Questionários, aplicados junto aos professores, a fim de identificar estas dificuldades. Além de Pesquisa Documental junto aos PPPs e outros documentos que normatizam o funcionamento das instituições, Observação do cotidiano escolar e Registro Fotográfico. As ações consistem em realização de Seminários Temáticos Interdisciplinares e Oficinas, visando parte da capacitação dos professores para a promoção da EA nas atividades educativas cotidianas; implantação de Coleta Seletiva de lixo; arborização das escolas; estímulo na institucionalização da Educação Ambiental, como prática pedagógica interdisciplinar; além de elaboração de material didático para a EA, a partir da participação das comunidades escolares envolvidas no processo.',
                style: MyThemes.fontTextBody()
              )
            )
          ],
        ),
      ),
    ),
  );
}
}