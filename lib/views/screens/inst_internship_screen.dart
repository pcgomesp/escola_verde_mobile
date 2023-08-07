import 'package:escola_verde_mobile/views/widgets/custom_appbar.dart';
import 'package:escola_verde_mobile/views/widgets/drawer_appbar.dart';
import 'package:flutter/material.dart';
import '../widgets/standard_text_and_link.dart';

class Inst_internship_screen extends StatelessWidget {
  const Inst_internship_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFECEBE1),
      appBar: CustomAppBar('Estágio'),
      drawer: DrawerAppbar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10),
                child: DescriptiveText(
                'Estágio Curricular Obrigatório ou Complementar', //title
                'Uma das possibilidades de atuação no PEV é através de estágio curricular obrigatório ou complementar. O estudante fará seu estágio curricular pela Secretaria de Educação das Prefeituras de qualquer dos municípios envolvidos no Projeto, com atuação profissional através do Projeto Escola Verde.\n'
                'O estudante poderá cumprir integralmente, ou parcialmente, a carga horária do estágio, que varia de 180 a 360 hs, dependendo do curso e da instituição de ensino. O estágio deverá ser solicitado à Coordenação do PEV, mediante solicitação expressa através de carta e apresentação de Currículo, para avaliação.\n\n'
                'Podem se submeter à avaliação para estagiário(a) do PEV estudantes de quaisquer curso e áreas do conhecimento, das diferentes instituições universitárias vinculadas ao Projeto, como a UNIVASF, IF-Sertão Pernambucano, Facape, Uniesb, Uneb e UPE. O estágio curricular é obrigatório para quase todos os cursos de graduação e o PEV espera contribuir com a formação profissional, a partir de experiências de ensino, pesquisa e extensivas, em atividades interdisciplinares.\n\n'
                'O estágio será realizado dentro da área e do campo de atuação profissional de formação do estudante, mas sempre a partir da integração com a visão interdisciplinar do Projeto. Para maiores informações entre em contato com a Coordenação do PEV.',
                "http://www.planalto.gov.br/ccivil_03/_ato2007-2010/2008/lei/l11788.htm"),
              ),         
            ]
          )
        )
      )
    );
  }
}
