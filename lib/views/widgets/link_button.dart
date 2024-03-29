import 'package:escola_verde_mobile/views/widgets/snackbar_error.dart';
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
      onTap: () => _launchUrl(url, context),
      child: Container(
        margin: const EdgeInsets.all(20),
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
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(64, 94, 38, 0.7),
              Color.fromRGBO(168, 246, 98, 0.4),
              Color.fromRGBO(64, 94, 38, 0.7),
            ],
          ),
          color: MyThemes.colorScreen,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          image: const DecorationImage(
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

Future<void> _launchUrl(url, context) async {
  {
    Uri trueUrl = Uri.parse(url);
    try {
      await launchUrl(trueUrl, mode: LaunchMode.externalApplication);
    } catch (_) {
      SnackErrorMessage.showSnack(context);
    }
  }
}
