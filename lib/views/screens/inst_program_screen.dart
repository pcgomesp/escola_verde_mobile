
import 'package:escola_verde_mobile/views/widgets/custom_appbar.dart';
import 'package:escola_verde_mobile/views/widgets/drawer_appbar.dart';
import 'package:flutter/material.dart';
import 'package:escola_verde_mobile/themes/my_themes.dart';
import '../widgets/standard_text_and_link.dart';
import 'package:url_launcher/url_launcher.dart';


class Inst_program_screen extends StatelessWidget {
  const Inst_program_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECEBE1),
      appBar: const CustomAppBar('Programa Escola Verde'),
      drawer: const DrawerAppbar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Image.asset(
                  'assets/logo_png_frame.png',
                  width: 230,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10),
                child: const DescriptiveText(
                'Programa Escola Verde',
                'Você sabia que o PEV também significa Programa Escola Verde?\n\n'
                'Pois é. Desde 2014 o projeto foi reconhecido e aprovado no Programa de Extensão Universitária (Proext) do Ministério da Educação (MEC), concorrendo com mais de 3 mil outras propostas, na condição de Programa Escola Verde para ser replicado de forma continuada em todas as escolas do Brasil.\n'
                'Esta replicação ocorre a qualquer tempo por adesão voluntária de Professores, Estudantes e Gestores interessados em desenvolver o PEV em sua escola, cidade ou região, através do Movimento Escola Verde (MEV). Bastando aos interessados preencher um cadastro e, caso seja aprovado pela coordenação, acessar o passo-a-passo para criar o PEV na(s) escola(s).\n\n'
                'Podem participar escolas de qualquer nível ou modalidade, inclusive escolas técnicas, universidades e especiais.',
                "http://educambiental.mma.gov.br/index.php?option=com_educaresmapa&view=educaressingle&id=494&lat=-9.416798&lng=-40.503516"
                ),
              ),  
            ]
          )
        )
      )
    );
  }
}

