
import 'package:escola_verde_mobile/views/widgets/custom_appbar.dart';
import 'package:escola_verde_mobile/views/widgets/drawer_appbar.dart';
import 'package:flutter/material.dart';
import 'package:escola_verde_mobile/themes/my_themes.dart';
import '../widgets/standard_text_and_link.dart';
import 'package:url_launcher/url_launcher.dart';


class Event_certificate_screen extends StatelessWidget {
  const Event_certificate_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECEBE1),
      appBar: const CustomAppBar('Certificados'),
      drawer: const DrawerAppbar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 10),
                child: const DescriptiveText(
                'Geração de Certificados',
                'Os eventos promovidos pelo Escola Verde oferecem certificados para todos os participantes. Reconhecemos a importância de valorizar e celebrar seu envolvimento em nossas atividades voltadas para a sustentabilidade.'
                '\nOs certificados do Escola Verde são uma forma tangível de comprovar sua participação e conhecimentos adquiridos em nossos eventos. Além de ser uma conquista pessoal, eles podem ser utilizados para enriquecer seu currículo, compartilhar nas redes sociais ou guardar como uma lembrança especial.'
                '\nAcreditamos na autonomia dos participantes, por isso, você tem a facilidade de gerar seus próprios certificados. Essa opção permite personalizar o documento de acordo com suas preferências e necessidades.'
                '\n\nPra mais informações, clique no botão abaixo.',
                "https://escolaverde.org/site/minicursos/certificados/index.php"
                ),
              ),  
            ]
          )
        )
      )
    );
  }
}

