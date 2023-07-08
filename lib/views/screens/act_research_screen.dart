import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../themes/my_themes.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/standard_text_and_link.dart';

class ActResearchScreen extends StatefulWidget {
  const ActResearchScreen({super.key});

  @override
  State<ActResearchScreen> createState() => _ActResearchScreenState();
}

class _ActResearchScreenState extends State<ActResearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyThemes.colorScreen,
      appBar: const CustomAppBar(
          'Atividades'), //isso aqui não sei se esta de fato no meio
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.height * 0.25,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(200))), //ERA PRA FICAR REDONDO
                //trocar imagem?
                child: Image.asset(
                  'assets/activity_screen.png',
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            //Pesquisa Documental precisa de dois botões para baixar pdf (sugestão do site "Documento 1" "Documento 2")
            Text(
              'Pesquisa Documental',
              style: MyThemes.kreonRegular(textColor: MyThemes.colorTextTitle),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Text(
              'A pesquisa ocorre através da observação in loco, '
              'leitura e análise dos Projetos Políticos Pedagógicos (PPPs) '
              'das escolas, dos Currículos, Planos de Aula e outros documentos'
              ' normativos das instituições de ensino visitadas, a fim de '
              'investigar o tratamento dado a questão ambiental como tema permanente'
              ' e interdisciplinar. Alguns documentos estão disponíveis '
              'em formato digital, outros foram fotografados e/ou foram transcritas'
              ' partes para análise de conteúdo. Todos os processos de pesquisa '
              'e de ações do PEV são fotografados para servir como documento consultivo'
              ' e analítico das atividades.',
              style: MyThemes.fontTextBody(textColor: MyThemes.colorTextBody),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () => setState(() {
                            launchExternalWebsite(
                                "https://escolaverde.org/site/wp-content/uploads/2015/06/Pesquisa-documental-1.pdf");
                          }),
                      child: Text(
                        "Documento 1",
                        style: MyThemes.fontSideMenu(
                            textColor: Color.fromRGBO(56, 106, 0, 1),
                            fontSize: 15),
                      )),
                  TextButton(
                      onPressed: () => setState(() {
                            launchExternalWebsite(
                                "https://escolaverde.org/site/wp-content/uploads/2015/06/Pesquisa-documental.pdf");
                          }),
                      child: Text(
                        "Documento 2",
                        style: MyThemes.fontSideMenu(
                            textColor: Color.fromRGBO(56, 106, 0, 1),
                            fontSize: 15),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            const DescriptiveText(
                'Pesquisa com Formulário',
                'Ocorre no inicio do processo de visitação às escolas. O Formulário é preenchido pelo estagiário'
                    'uma única vez, com o auxilio do gestor escolar, ou outra pessoa conhecedora da escola, com o'
                    'propósito de caracterizar as condições gerais da instituição de ensino, tais como às condições'
                    'físico-estruturais, sanitárias, projetos ambientais em andamento, ações de acessibilidade, uso de'
                    'tecnologias da informação, dentre outras informações.',
                'https://escolaverde.org/site/?p=12567'),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Text(
              'Pesquisa Survey',
              style: MyThemes.kreonRegular(textColor: MyThemes.colorTextTitle),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Text(
              'Consiste na aplicação de questionários junto aos professores das escolas visitadas pelo Projeto a'
              'fim de identificar as percepções dos mesmos sobre a Educação Ambiental, suas necessidades e'
              'expectativas com relação a Educação Ambiental.',
              style: MyThemes.fontTextBody(textColor: MyThemes.colorTextBody),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () => setState(() {
                            launchExternalWebsite(
                                "https://escolaverde.org/site/wp-content/uploads/2015/06/Pesquisa-Survey-com-os-Professores.pdf");
                          }),
                      child: Text(
                        "Documento 1",
                        style: MyThemes.fontSideMenu(
                            textColor: const Color.fromRGBO(56, 106, 0, 1),
                            fontSize: 15),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            // Depois mudar o redirecionador abaixo: notícias com tag Pesquisa
            const DescriptiveText(
                'Notícias atuais',
                'Quer ver as notícias atuais referentes às pesquisas do PEV? Clique aqui!',
                'https://escolaverde.org/site/?cat=352')
          ],
        ),
      ),
    );
  }

  void launchExternalWebsite(String url) async {
    Uri trueUrl = Uri.parse(url);
    if (!await launchUrl(trueUrl, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
}
