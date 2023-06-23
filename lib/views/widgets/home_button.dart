import 'package:flutter/material.dart';

import '../../themes/my_themes.dart';

class HomeButton extends StatelessWidget {
  const HomeButton(
      {super.key,
      required this.titulo,
      required this.imagePath,
      required this.onTap,
      required this.imageHeigth});

  final String titulo;
  final String imagePath;
  final void Function() onTap;
  final double imageHeigth;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.39,
        height: MediaQuery.of(context).size.height * 0.18,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 0,
              blurRadius: 4,
              offset: const Offset(0, 4), // changes position of shadow
            ),
          ],
          color: MyThemes.colorScreen,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Text(
              titulo,
              style: MyThemes.kreonRegular(fontSize: 19),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.005,
            ),
            Image.asset(
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
