import 'package:escola_verde_mobile/views/widgets/custom_appbar.dart';
import 'package:escola_verde_mobile/views/widgets/drawer_appbar.dart';
import 'package:flutter/material.dart';
import '../widgets/snackbar_error.dart';
import '../widgets/standard_text_and_link.dart';
import 'package:url_launcher/url_launcher.dart';

class Inst_group_screen extends StatelessWidget {
  const Inst_group_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFECEBE1),
        appBar: const CustomAppBar('Grupos de Pesquisa'),
        drawer: const DrawerAppbar(),
        body: SingleChildScrollView(
            child: Center(
                child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Image.asset(
              'assets/grupos.png',
              width: 230,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10),
            child: DescriptiveText(
                'Grupo de Pesquisa em Educação Ambiental Interdisciplinar – GPEAI',
                'O GPEAI é um Grupo de Pesquisa cadastrado no CNPq e certificado pela UNIVASF. O grupo é formado por'
                    'professores/pesquisadores e alunos/pesquisadores de diferentes instituições acadêmicas da Meso Região do Vale'
                    'do São Francisco, interessados em desenvolver conhecimentos e ações em Educação Ambiental.'
                    'As atividades têm caráter Interdisciplinar e são direcionadas aos diferentes processos locais, nacionais e mundiais relativos às questões ambientais, a partir das seguintes Linhas de Pesquisa: '
                    '\n\nLinha 1. Práticas Pedagógicas em Educação Ambiental.\n Investiga as ações, composições curriculares, contextualização e percepções da Educação Ambiental, formal e informal, no processo ensino-aprendizagem.'
                    '\n\nLinha 2. Formação de Professores.\n Tem por objetivo central conhecer o perfil de formação escolar dos professores que atuam no magistério; além de investigar e propor processos de capacitação em Educação Ambiental, de forma interdisciplinar, articulada e contextualizada.'
                    '\n\nLinha 3. Meio Ambiente e Desenvolvimento Sustentável.\n Procura desenvolver estudos sobre as representações sociais, os processos cooperativos e as diferentes formas de convivência com o Semi-Árido, conservação e preservação, a partir do reconhecimento e problematização das questões ambientais locais.'
                    '\n\nLinha 4. Arte e Mídia Ambiental.\n Consiste em conhecer os impactos, tipos e características das Tecnologias de Informação e Comunicação (TICs) usadas na abordagem da problemática ambiental. Busca também investigar novas formas, significações e representações artísticas da questão ambiental, através das artes cênicas, gráficas, esculturais, plásticas e das novas tecnologias midiáticas no desenvolvimento da Educação Ambiental.'
                    '\n\nLinha 5. Saúde Ambiental.\n Visa compreender os diversos problemas locais de saúde ambiental, a partir da articulação com a Educação Ambiental. Estuda problemas como saneamento ambiental, higiene e consumo sustentável, como práticas educativas para melhoria da qualidade de vida.'
                    '\n\nLinha 6. Políticas Públicas Ambientais.\n Tem por objetivo central compreender as ações e projetos dos Poderes Públicos no enfrentamento dos problemas socioambientais, a partir da promoção da Educação Ambiental, formal e informal, a fim de estimular a participação popular e garantir a sustentabilidade das ações executadas.',
                "http://www.escolaverde.univasf.edu.br/wp-content/uploads/2012/06/GRUPODEPESQUISA.pdf"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: GestureDetector(
              onTap: () => _launchUrl(
                  "http://dgp.cnpq.br/dgp/espelhogrupo/8060949249279649",
                  context),
              child: Image.asset(
                'assets/diretorio_grupos.png',
                width: 230,
              ),
            ),
          )
        ]))));
  }
}

Future<void> _launchUrl(url, context) async {
  Uri trueUrl = Uri.parse(url);
  try {
    await launchUrl(trueUrl, mode: LaunchMode.externalApplication);
  } catch (_) {
    SnackErrorMessage.showSnack(context);
  }
}
