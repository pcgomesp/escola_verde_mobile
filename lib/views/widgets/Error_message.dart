import 'package:flutter/material.dart';
import 'package:escola_verde_mobile/themes/my_themes.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/erro.png',
              width: MediaQuery.of(context).size.width * 0.65,
            ),
            Text(
              'Um erro ocorreu!',
              style: MyThemes.fontTextTitle(
                  fontSize: 24, textColor: const Color(0xFFFF6565)),
            )
          ],
        ),
      ),
    );
  }
}
