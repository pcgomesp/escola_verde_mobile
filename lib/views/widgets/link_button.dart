import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../themes/my_themes.dart';

class Link_button extends StatelessWidget {
  const Link_button(
      {super.key,
      required this.titulo,
      required this.imagePath,
      required this.url,
      required this.imageHeigth});

  final String titulo;
  final String imagePath;
  final dynamic url;
  final double imageHeigth;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _launchUrl(url),
      child: Container(
        margin: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width * 0.95,
        height: MediaQuery.of(context).size.height * 0.20,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.40),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 4), // changes position of shadow
            ),
          ],
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(64, 94, 38, 0.7),
              Color.fromRGBO(168, 246, 98, 0.4),
              Color.fromRGBO(64, 94, 38, 0.7),
            ],
          ),
          color: MyThemes.colorScreen,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
              image: AssetImage("assets/capin.PNG"), opacity: 0.1),
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Text(
              titulo,
              style:
                  MyThemes.kreonRegular(fontSize: 19, textColor: Colors.white),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.005,
            ),
            /*Image.asset(
              imagePath,
              height: imageHeigth,
            ),*/

            Image.network(
              imagePath,
              height: imageHeigth,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _launchUrl(url) async {
  Uri trueUrl = Uri.parse(url);
  if (!await launchUrl(trueUrl, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $url');
  }
}
