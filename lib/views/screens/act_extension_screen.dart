import 'package:flutter/material.dart';

import '../../themes/my_themes.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/standard_text_and_link.dart';

class ActExtensionScreen extends StatefulWidget {
  const ActExtensionScreen({super.key});

  @override
  State<ActExtensionScreen> createState() => _ActExtensionScreenState();
}

class _ActExtensionScreenState extends State<ActExtensionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyThemes.colorScreen,
      appBar: const CustomAppBar('Atividades'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.height * 0.25,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(200))),
                child: Image.asset(
                  'assets/activity_screen.png',
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            //Atividades
            // Arborização e jardinagem
            const DescriptiveText(
                'Arborização e jardinagem', //title
                'A ação fundamental nesta atividade é sensibilizar e informar'
                    'sobre as características e importância das árvores, bem como '
                    'mobilizar a população para atividades de arborização das instituições '
                    'e das comunidades, através de ações educativas e extensivas com a '
                    'realização de plantios de mudas nativas e frutíferas.',
                "https://escolaverde.org/site/?p=22265"), //url
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Coleta Seletiva
            const DescriptiveText(
                'Coleta Seletiva', //title
                'Através de atividades lúdicas, exibição de vídeos, palestras, '
                    'debates, distribuição de material informativo, e de ações '
                    'práticas de separação e destinação adequada dos resíduos '
                    'sólidos, o PEV sensibiliza e mobiliza professores, estudantes '
                    'e gestores, comunidades e outras instituições, para fomentarem '
                    'o hábito da coleta seletiva dos resíduos sólidos.',
                "https://escolaverde.org/site/?p=20194"), //url
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Oficina de reciclagem
            const DescriptiveText(
                'Oficina de reciclagem', //title
                'Desenvolvendo Oficinas de materiais reciclados das próprias '
                    'escolas e das residências dos estudantes, o PEV colabora com'
                    ' a economia de recursos, a sustentabilidade e o '
                    'desenvolvimento de dons artísticos/artesanais.',
                "https://escolaverde.org/site/?p=1523"), //url
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Mídia Ambiental
            const DescriptiveText(
                'Mídia Ambiental', //title
                'Esta atividade ocorre com a investigação e desenvolvimento de instrumentos '
                    'para a capacitação de professores em Educação Ambiental, tais como o '
                    'CD-Rom do PEV que está em processo de registro e produção; bem como através '
                    'de ações junto aos '
                    'laboratórios de informática das escolas para atividades de educação ambiental.',
                "https://escolaverde.org/site/?p=22546"), //url
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Eventos PEV
            const DescriptiveText(
                'Eventos PEV', //title
                'O Projeto Escola Verde está sempre promovendo eventos na '
                    'comunidade e em outras instituições onde está atuando, '
                    'para a formação e atualização da equipe PEV, para a formação '
                    'e capacitação dos professores e eventos externos para a população em geral.',
                "https://escolaverde.org/site/?p=3856"), //url
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Saúde Ambiental
            const DescriptiveText(
                'Saúde Ambiental', //title
                'Junto aos professores, alunos e familiares são desenvolvidas '
                    'ações educativas visando a mudança de hábitos e costumes, de '
                    'tal forma que o cuidado e a prevenção tornem-se práticas '
                    'cotidianas. São abordados temas como higiene do corpo e do'
                    ' meio, alimentação saudável, práticas de atividades físicas, '
                    'doenças infecto-parasitárias e crônico-degenerativas de'
                    ' causas ambientais, primeiros socorros, gravidez na adolescência,'
                    ' DSTs e Sexualidade',
                "https://escolaverde.org/site/?p=23625"), //url
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Hortas Agroecológicas
            const DescriptiveText(
                'Hortas Agroecológicas', //title
                'A horta é uma maneira de sensibilizar para os cuidados, '
                    'contato com a natureza, e uma ferramenta didática para o '
                    'exercício prático de diferentes conteúdos das diversas '
                    'disciplinas escolares, bem como para a promoção da '
                    'educação ambiental e produção de alimentos orgânicos '
                    'junto às comunidades.',
                "https://escolaverde.org/site/?p=22052"), //url
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Compostagem
            const DescriptiveText(
                'Compostagem', //title
                'A compostagem é incentivada como prática necessária para '
                    'a manutenção do processo de arborização, jardinagem e hortas'
                    ' institucionais e comiunitárias, no sentido do fornecimento'
                    ' de um composto orgânico permanente resultado do'
                    ' reaproveitamento do rejeito orgânico da escola.',
                "https://escolaverde.org/site/?p=18099"), //url
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Ambientalização
            const DescriptiveText(
                'Ambientalização', //title
                'o PEV também incentiva, dá acompanhamento e orientações para'
                    ' que as instituições incluam em seus documentos '
                    '(PPPs, Currículos, Estatutos, Regimentos, Planos de Curso,'
                    ' etc.) a problemática socioambiental de maneira '
                    'permanente e interdisciplinar. Aborda também a Lei da Educação'
                    ' Ambiental (9.795), Os Parâmetros Curriculares Nacional:'
                    ' Tema Meio ambiente, a formação de Comissões de Meio Ambiente '
                    'e Qualidade de Vida (COM-VIDA), o Programa Dinheiro Direto '
                    'na Escola Sustentável (PDDE-Sustentável) e a Agenda Ambiental'
                    ' para a Administração Pública (A3P).',
                "https://escolaverde.org/site/?p=21970"), //url
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Visitas Técnicas Socioambientais
            const DescriptiveText(
                'Visitas Técnicas Socioambientais', //title
                'A Visita Técnica socioambiental é um instrumento pedagógico '
                    'e instrutivo de grande importância para a aprendizagem e'
                    ' sensibilização do visitante. Neste sentido, o PEV tem levado'
                    ' alunos, professores e gestores escolares para realização'
                    ' deste procedimento junto ao Centro de Referência para'
                    ' Recuperação de Áreas Degradadas (CRAD), Centro de Manejo'
                    ' da Fauna da Caatinga (CEMAFAUNA) e a ONG Ecovale, para o'
                    ' conhecimento dos processos de preservação e recuperação do '
                    'meio ambiente, desenvolvidos em nossa região. Todos os '
                    'visitantes são acompanhados e participam previamente de uma'
                    ' palestra na instituição visitada.',
                "https://escolaverde.org/site/?p=19992"), //url
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Arteducação Ambiental
            const DescriptiveText(
                'Arteducação Ambiental', //title
                'Pinturas, desenhos, peças teatrais,  música, dança e outras'
                    ' manifestações artísticas são desenvolvidas na perspectiva'
                    ' da informação e sensibilização sobre as questões'
                    ' socioambientais, tornando-se um importante instrumento'
                    ' político-pedagógico de formação da cidadania, formação'
                    ' crítica, participação e responsabilidade socioambiental.',
                "https://escolaverde.org/site/?p=24154"), //url
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Cuidados com os Agrotóxico
            const DescriptiveText(
                'Cuidados com os Agrotóxico', //title
                'Tem por objetivo sensibilizar e informar alunos e '
                    'professores quanto aos perigos de manipulação e contato'
                    ' com os produtos químicos chamados “agrotóxicos” e seus '
                    'impactos na contaminação dos alimentos. Na região '
                    'do Vale do São Francisco esta ação é muito importante tendo'
                    ' em vista que grande parte de alunos são filhos de'
                    ' agricultores ou eles mesmo também desenvolvem atividade '
                    'na área rural.',
                "https://escolaverde.org/site/?p=15887"), //url
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Cuidados e preservação das abelhas
            const DescriptiveText(
                'Cuidados e preservação das abelhas', //title
                'Nesta ação procura-se sensibilizar professores e alunos'
                    ' para os cuidados e preservação das abelhas, demonstrando'
                    ' sua importância para o ecossistema e para a indústria'
                    ' de cosmético, farmacêutica e gastronômica.',
                "https://escolaverde.org/site/?p=24539"), //url
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Energias Renováveis
            const DescriptiveText(
                'Energias Renováveis', //title
                'Esta ação consiste em sensibilizar e informar alunos '
                    'e professores da importância da utilização das energias '
                    'renováveis, tais como solar, eólica e geotérmica, em'
                    ' substituição ao petróleo e outras fontes que degradam'
                    ' o meio ambiente e impactam diretamente de forma negativa'
                    ' na qualidade de vida.',
                "https://escolaverde.org/site/?p=23038"), //url
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Plantas Medicinais
            const DescriptiveText(
                'Plantas Medicinais', //title
                'Nesta atividade o PEV procura demonstrar as espécies, '
                    'indicações, princípios químicos, perigos e cuidados, com'
                    ' o uso de plantas medicinais nos hábitos cotidianos.'
                    ' Ao mesmo tempo promove a identificação e valorização '
                    'das plantas medicinais da Caatinga.',
                "https://escolaverde.org/site/?p=23153"), //url
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Recurso hídrico
            const DescriptiveText(
                'Recurso hídrico', //title
                'Nesta ação procura-se sensibilizar quanto a economia e'
                    ' uso responsável da água, bem como os cuidados e '
                    'prevenção de doenças de veiculação hídrica e'
                    ' consumo de água potável. Também são repassadas informações'
                    ' sobre a importância da água para a vida, suas'
                    ' características, composição e crise hídrica mundial.',
                "https://escolaverde.org/site/?p=21885"), //url
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            //Saneamento Ambiental
            const DescriptiveText(
                'Saneamento Ambiental', //title
                'Com esta ação o PEV espera colaborar para a reflexão e '
                    'atuação para promoção do Saneamento básico e ambiental,'
                    ' com foco nos problemas dos rejeitos sólidos, a água,'
                    ' esgotamento sanitário e drenagem das águas pluviais.',
                "https://escolaverde.org/site/?p=24603"), //url
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}
