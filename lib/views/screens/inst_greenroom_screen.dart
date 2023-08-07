import 'package:escola_verde_mobile/views/widgets/custom_appbar.dart';
import 'package:escola_verde_mobile/views/widgets/drawer_appbar.dart';
import 'package:flutter/material.dart';
import '../widgets/standard_text_and_link.dart';

class Inst_greenroom_screen extends StatelessWidget {
  const Inst_greenroom_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECEBE1),
      appBar: const CustomAppBar('Sala Verde'),
      drawer: const DrawerAppbar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Image.asset(
                  'assets/sala_verde.png',
                  width: 230,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10),
                child: DescriptiveText(
                'Chancela da Sala Verde do PEV é confirmada pelo MMA', //title
                'A lista final com o resultado das novas Salas Verdes chanceladas pelo Ministério do Meio Ambiente (MMA) foi divulgada na última sexta-feira (18.5) e a unidade do Programa Escola Verde, na Univasf em Juazeiro (BA), foi confirmada na classificação. O Ministério selecionou apenas 243 salas no Brasil, sendo o ato um reconhecimento do Governo Federal ao desafio de promover iniciativas nas escolas e comunidades.\n\n'
                'O espaço foi criado pelo PEV em 2012, desde então se tornou ambiente para múltiplas potencialidades, disponibilizando e democratizando o acesso à informação, além de desenvolver atividades de educação ambiental através cursos, palestras, oficinas, eventos, encontros, campanhas e reuniões. Iniciativas que foram essenciais para adquirir a chancela do MMA. Até o momento, o total de entidades habilitadas é de 553, em todo o país. Na Bahia, o número cai para 17 unidades. Embora não faça repasse de recursos, com a confirmação do edital, o ministério passa a divulgar as atividades voltadas ao projeto e a oferecer formação à distância e materiais educativos em formato digital.\n\n'
                'Parabéns ao PEV, parceiros e todos os integrantes. Essa união vem viabilizando o sucesso não apenas da Sala Verde, mas também do Viveiro, das atividades e do Projeto como todo.',
                "http://salasverdes.mma.gov.br/salas/"),
              ),         
            ]
          )
        )
      )
    );
  }
}
