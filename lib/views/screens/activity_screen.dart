import 'package:escola_verde_mobile/views/widgets/standard_text_and_link.dart';
import 'package:escola_verde_mobile/views/widgets/view_more_button.dart';
import 'package:flutter/material.dart';
import 'package:escola_verde_mobile/themes/my_themes.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/custom_appbar.dart';

class activity_screen extends StatefulWidget {
  const activity_screen({Key? key}) : super(key: key);

  @override
  State<activity_screen> createState() => _activity_screenState();
}

class _activity_screenState extends State<activity_screen> {
  void launchExternalWebsite(String url) async {
    var urlUri = Uri.parse(url);
    if (await canLaunchUrl(urlUri)) {
      await launchUrl(urlUri, mode: LaunchMode.externalApplication);
    } else {
      throw 'could not lanch $urlUri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyThemes.colorScreen,
      appBar: const CustomAppBar(
          'Atividades'), //isso aqui não sei se esta de fato no meio
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          children: [
            Center(
              child: Container(
                child: Image.asset(
                  'assets/activity_screen.png',
                ), //trocar imagem?
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(200))), //ERA PRA FICAR REDONDO
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            //Atividades
            // Arborização e jardinagem nas escolas
            const DescriptiveText(
                'Arborização e jardinagem nas escolas', //title
                'A ação fundamental nesta atividade é sensibilizar, promover e mobilizar a'
                    ' comunidade escolar e as famílias do entorno para a arborização das escolas'
                    ' visitadas pelo PEV, através de ações educativas e extensivas com a realização'
                    ' de plantios de árvores e jardinagem das escolas. Trata-se de disponibilizar as'
                    ' mudas, oferecer treinamento, acompanhamento e orientação para que a escola se torne'
                    ' sustentável na manutenção das ações.',
                "http://www.escolaverde.univasf.edu.br/?p=1745"), //url
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Coleta Seletiva nas escolas
            const DescriptiveText(
                'Coleta Seletiva nas escolas', //title
                'Através de atividades lúdicas, exibição de vídeos, palestras, debates,'
                    ' distribuição de material informativo, e de ações práticas de separação'
                    ' e destinação adequada dos resíduos sólidos; o PEV sensibiliza e mobiliza'
                    ' professores, estudantes e gestores, para fomentarem na Escola e junto das'
                    ' Famílias o hábito da coleta seletiva do lixo. Tambores coletores coloridos'
                    ' tornam-se material didático na compreensão da importância desta prática para'
                    ' a saúde humana e para o meio ambiente. As escolas também são incentivadas'
                    ' a adotarem práticas de reciclagem, com a reutilização e re-uso de materiais,'
                    ' bem como através de confecção de artefatos e obras de arte com material reciclado.',
                "http://www.escolaverde.univasf.edu.br/?p=2367"), //url
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Reciclagem nas escolas
            const DescriptiveText(
                'Reciclagem nas escolas', //title
                'Desenvolvendo Oficinas de materiais reciclados das próprias escolas'
                    ' e das residências dos estudantes, o PEV promove a economia de recursos,'
                    ' a sustentabilidade e o desenvolvimento de dons artísticos/artesanais.'
                    ' Este grupo se articula com o de Coleta Seletiva e com o de Ambientalização,'
                    ' assim como os demais, a fim de tornas as instituições de ensino eficientes'
                    ' em termos ambientais',
                "http://www.escolaverde.univasf.edu.br/?p=4240"), //url
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Mídia Ambiental e Capacitação de Professores
            const DescriptiveText(
                'Mídia Ambiental e Capacitação de Professores', //title
                'Esta atividade ocorre com a investigação e desenvolvimento'
                    ' de instrumentos para a capacitação de professores em Educação'
                    ' Ambiental. Partindo do princípio de que as Novas Tecnologias'
                    ' da Informação e Comunicação fornecem os mecanismos para esta'
                    ' capacitação, o PEV está em desenvolvimento de um protótipo de'
                    ' mídia ambiental, que contribua com a formação dos professores '
                    'de todas as áreas, e os auxiliem em sala de aula para trabalhar '
                    'com a temática socioambiental. Este grupo também e responsável '
                    'pela elaboração e confecção de material didático, informativo e '
                    'de sensibilização para as escolas e toda comunidade.',
                "http://www.escolaverde.univasf.edu.br/?p=333"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Eventos PEV
            const DescriptiveText(
                'Eventos PEV', //title
                'O Projeto Escola Verde está sempre promovendo eventos '
                    'nas escolas onde está atuando, para a formação e atualização'
                    ' da equipe PEV, para a formação e capacitação dos professores'
                    ' e eventos externos para a população em geral',
                "http://www.escolaverde.univasf.edu.br/?page_id=4583"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Saúde Ambiental nas escolas
            const DescriptiveText(
                'Saúde Ambiental nas escolas',
                'Junto aos professores, alunos e familiares são '
                    'desenvolvidas ações educativas visando a mudança'
                    ' de hábitos e costumes, de tal forma que o cuidado,'
                    ' a prevenção e a higiene tornem-se práticas cotidianas.'
                    ' Cuidados com o descarte adequado do lixo, higiene pessoal'
                    ' e do meio, alimentação saudável e com as diversas formas '
                    'de poluição e degradação ambiental que afetam a saúde',
                "http://www.escolaverde.univasf.edu.br/?p=2576"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Compostagem, hortas e plantas medicinais nas escolas
            const DescriptiveText(
                'Compostagem, hortas e plantas medicinais nas escolas',
                'A compostagem é incentivada como prática necessária '
                    'para a manutenção do processo de arborização, jardinagem '
                    'e hortas escolares, no sentido do fornecimento de um composto'
                    ' orgânico permanente. O cultivo de hortas e de plantas medicinai'
                    's da Caatinga já é uma prática em algumas escolas, cabendo ao PEV '
                    'levantar o conhecimento desta ação nas escolas, e incentivar que um '
                    'número maior de escolas possam também desenvolver sua produção orgânica'
                    ' de hortaliças, verduras e legumes, livres de poluentes, para que possa'
                    ' servir também na alimentação escola',
                "http://www.escolaverde.univasf.edu.br/?p=2495"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Ambientalização
            const DescriptiveText(
                'Ambientalização',
                'O PEV também incentiva, dá acompanhamento e orientações'
                    ' para que as escolas incluam em seus documentos (PPPs, Currículos, '
                    'Estatutos, Regimentos, Planos de Curso, etc) a problemática socioambiental '
                    'de maneira permanente e interdisciplinar.  A equipe desta Atividade'
                    ' também incentiva e promove a formação de Comissões de Meio Ambiente'
                    ' e Qualidade de Vida (COM-VIDA), a partir da participação de alunos,'
                    ' professores, gestores e comunidade, como elemento fundamental para'
                    ' o envolvimento da escola com as temáticas socioambientais.',
                "http://www.escolaverde.univasf.edu.br/?p=1648"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Visitas Técnicas Socioambientais
            const DescriptiveText(
                'Visitas Técnicas Socioambientais',
                'A Visita Técnica socioambiental é um instrumento pedagógico'
                    ' e instrutivo de grande importância para a aprendizagem e'
                    ' sensibilização do visitante. Neste sentido, o PEV tem levado'
                    ' alunos, professores e gestores escolares para realização deste'
                    ' procedimento junto ao Centro de Referência para Recuperação de'
                    ' Áreas Degradadas (CRAD), Centro de Manejo da Fauna da Caatinga '
                    '(CEMAFAUNA) e a ONG Ecovale, para o conhecimento dos processos de'
                    ' preservação e recuperação do meio ambiente, desenvolvidos em nossa'
                    ' região. Todos os visitantes são acompanhados e participam previamente'
                    ' de uma palestra na instituição visitada',
                "http://www.escolaverde.univasf.edu.br/?p=2398"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Arteducação Ambiental
            const DescriptiveText(
                'Arteducação Ambiental',
                'Pinturas, desenhos, peças teatrais,  música,'
                    ' dança e outras manifestações artísticas são desenvolvidas'
                    ' na perspectiva da informação e sensibilização sobre as questões'
                    ' socioambientais, tornando-se um importante instrumento político de formação da cidadania.',
                "http://www.escolaverde.univasf.edu.br/?p=4437"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
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
                  TextButton(onPressed:  ()=> setState(() {launchExternalWebsite("https://escolaverde.org/site/wp-content/uploads/2015/06/Pesquisa-documental-1.pdf");}),
                      child: Text("Documento 1",
                        style: MyThemes.fontSideMenu(textColor: Color.fromRGBO(56, 106,0, 1), fontSize: 15),)),
                 
                  TextButton(onPressed: ()=> setState(() {launchExternalWebsite("https://escolaverde.org/site/wp-content/uploads/2015/06/Pesquisa-documental.pdf");}),
                      child: Text("Documento 2",
                      style:  MyThemes.fontSideMenu(textColor: Color.fromRGBO(56, 106,0, 1), fontSize: 15),)),
                ],
              ),
            ), //precisa de outro botão
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),

            //Pesquisa com Formulário
            const DescriptiveText(
                'Pesquisa com Formulário',
                'Ocorre no inicio do processo de visitação às escolas.'
                    ' O Formulário é preenchido pelo estagiário uma única vez,'
                    ' com o auxilio do gestor escolar, ou outra pessoa conhecedora'
                    ' da escola, com o propósito de caracterizar as condições '
                    'gerais da instituição de ensino, tais como às condições '
                    'físico-estruturais, sanitárias, projetos ambientais em '
                    'andamento, ações de acessibilidade, uso de tecnologias '
                    'da informação, dentre outras informações.',
                "http://www.escolaverde.univasf.edu.br/?p=2684"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Pesquisa Survey
            const DescriptiveText(
                'Pesquisa Survey',
                'Consiste na aplicação de questionários junto aos professores '
                    ' das escolas visitadas pelo Projeto a fim de identificar'
                    ' as percepções dos mesmos sobre a Educação Ambiental,'
                    ' suas necessidades e expectativas com relação a Educação Ambiental.',
                "https://escolaverde.org/site/wp-content/uploads/2015/06/Pesquisa-Survey-com-os-Professores.pdf"),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            )
          ],
        ),
      ),
    );
  }
}
