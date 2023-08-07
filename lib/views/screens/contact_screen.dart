import 'package:flutter/material.dart';

import '../../themes/my_themes.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/drawer_appbar.dart';

import 'package:url_launcher/url_launcher.dart';

class Contact_screen extends StatefulWidget {
  const Contact_screen({Key? key}) : super(key: key);

  @override
  State<Contact_screen> createState() => _Contact_screenState();
}

class _Contact_screenState extends State<Contact_screen> {
  @override
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
      backgroundColor: const Color(0xFFECEBE1),
      appBar: const CustomAppBar('Contatos'),
      drawer: const DrawerAppbar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Image.asset(
                  'assets/contact_.png',
                  width: 250,

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, ),
                child:  Column(
                  children: [
                    Text(
                      'Redes sociais',
                      style: MyThemes.kreonRegular(textColor: MyThemes.colorTextTitle),
                      textScaleFactor: 1.5,

                    ),
                    TextButton.icon(
                        onPressed: () => setState(() {
                          launchExternalWebsite(
                              "https://www.instagram.com/programaescolaverde/");
                        }),
                        icon: Container(
                          child: Image.asset(
                            'assets/instagram.png',
                            width: 20,
                          ),
                        ),
                        label: const Text(
                          "Programaescolaverde",
                          style: TextStyle(
                            color: Colors.blueAccent,
                          ),
                        )),
                    TextButton.icon(
                        onPressed: ()=> setState(() {
                          launchExternalWebsite(
                              "https://www.facebook.com/programaescolaverde");
                        }),
                        icon: Container(
                          child: Image.asset(
                            'assets/facebook.png',
                            width: 20,
                          ),
                        ),
                        label: const Text(
                          "Programaescolaverde",
                          style: TextStyle(
                            color: Colors.blueAccent,
                          ),
                        )),
                    TextButton.icon(
                        onPressed: ()=> setState(() {
                          launchExternalWebsite(
                              "https://www.youtube.com/c/ProgramaEscolaVerde");
                        }),
                        icon: Container(
                          child: Image.asset(
                            'assets/youtube.png',
                            width: 20,
                          ),
                        ),
                        label: const Text(
                          "Programaescolaverde",
                          style: TextStyle(
                            color: Colors.blueAccent,
                          ),
                        )),
                  ],
                ),),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Column(
                  children: [
                    Text(
                      'Email',
                      style: MyThemes.kreonRegular(textColor: MyThemes.colorTextTitle),
                      textScaleFactor: 1.5,
                    ),
                    TextButton.icon(
                        onPressed: () => setState(() {
                          launchExternalWebsite(
                              "mailto:escolaverde@univasf.edu.br");
                        }),
                        icon: Container(
                          child: Image.asset(
                            'assets/gmail.png',
                            width: 20,
                          ),
                        ),
                        label: const Text(
                          "escolaverde@univasf.edu.br",
                          style: TextStyle(
                            color: Colors.blueAccent,
                          ),
                        )),
                    TextButton.icon(
                        onPressed: () => setState(() {
                          launchExternalWebsite(
                              "mailto:eainterdisciplinar@gmail.com");
                        }),
                        icon: Container(
                          child: Image.asset(
                            'assets/gmail.png',
                            width: 20,
                          ),
                        ),
                        label: const Text(
                            "eainterdisciplinar@gmail.com",
                            style: TextStyle(
                              color: Colors.blueAccent,
                            )
                        )),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Text(
                      'Telefone',
                      style: MyThemes.kreonRegular(textColor: MyThemes.colorTextTitle),
                      textScaleFactor: 1.5,
                    ),
                    TextButton.icon(
                        onPressed: () => setState(() {
                          launchExternalWebsite("tel:08781052994");
                        }),
                        icon: Container(
                          child: const Icon(Icons.call_outlined, size: 25.0),
                        ),
                        label: const Text(
                          "+55 87 8105 2994",
                          textScaleFactor: 1.2,
                          style: TextStyle(
                            color: Colors.blueAccent,

                          ),
                        )),


                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10,bottom: 15),
                  child: Column(
                    children: [
                      Text(
                        'Nosso Endereço',
                        style: MyThemes.kreonRegular(textColor: MyThemes.colorTextTitle),
                        textScaleFactor: 1.5,
                      ),
                      const Text('\n'
                          'UNIVASF- Av. Antonio Carlos Magalhães,\n'
                          '510, Maringá, Juazeiro, Bahia.',
                        textScaleFactor: 1.2,
                      )
                    ],
                  )
              ),

            ],

          ),
        ),
      ),
    );
  }
}

