import 'package:escola_verde_mobile/views/widgets/custom_appbar.dart';
import 'package:escola_verde_mobile/views/widgets/drawer_appbar.dart';
import 'package:flutter/material.dart';
import 'package:escola_verde_mobile/themes/my_themes.dart';
import '../widgets/standard_text_and_link.dart';

class Inst_nucleus_screen extends StatelessWidget {
  const Inst_nucleus_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECEBE1),
      appBar: const CustomAppBar('Núcleo Temático'),
      drawer: const DrawerAppbar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Image.asset(
                  'assets/nuteai.png',
                  width: 200,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10),
                child: const DescriptiveText(
                'Núcleo Temático de Educação Ambiental Interdisciplinar (NUTEAI)', //title
                'O NUTEAI é um componente curricular da UNIVASF formado por professores e alunos de vários cursos e áreas do conhecimento, '
                'empenhados em promover a Educação Ambiental de forma integrada e continua nas escolas da região. O grupo representa mais uma '
                'possibilidade do desenvolvimento de atividades de ensino, pesquisa e extensivas relativas às problemáticas socioambientais locais,'
                ' bem como sobre o papel da Educação Ambiental nos processos de promoção da sustentabilidade, dentro do Projeto Escola Verde.'
                ' Foi a partir da experiência no decurso de atividades do PEV que nasceu a necessidade de ampliar a margem de institucionalidade'
                ' do Projeto, com a formação do NUTEAI. Desde o segundo semestre de 2012 que os estudantes de diferentes cursos da UNIVASF  podem '
                'solicitar matrícula no NUTEAI. São oferecidas 50 vagas todos os semestres. Os alunos matriculados devem se envolver com as atividades'
                ' de ensino (Minicursos, Conferências, etc), pesquisa e extensivas do PEV, para cumprir uma Carga Horária obrigatória de 120 hs. '
                'Para isso devem se engajar em grupos interdisciplinares que se subdividem por escola e por atividade realizada. Todas as atividades de'
                ' ensino são certificadas pela UNIVASF,  agregando mais benefícios para os professores e alunos envolvidos. Ao final do período espera-se'
                'que os alunos tenham adquirido experiências de pesquisa nas escolas, extensivas com o envolvimento nas ações do PEV, e de ensino com a'
                ' participação nos Minicursos, Conferências e demais eventos desenvolvidos pelo grupo. Além de contribuir com as comunidades'
                ' (sobretudo as mais carentes) na promoção da Educação Ambiental, o NUTEAI colabora para que a UNIVASF cumpra seu papel social de fomentadora'
                ' da melhoria da qualidade de vida, ambiental e de ensino na região; permitindo o comprometimento socioambiental  dos estudantes matriculados,'
                ' em suas diferentes formações,  a partir de uma visão interdisciplinar e holística.',
                "http://www.proen.univasf.edu.br/wp-content/uploads/2014/08/Resolu%C3%A7%C3%A3o-sobre-Nucleos-Tematicos.pdf"),
              ),
              
            ]
          )
        )
      )
    );
  }
}
