import 'package:flutter/material.dart';

import '../../themes/my_themes.dart';
import '../screens/form_screen.dart';

class FormButton extends StatelessWidget {
  const FormButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Form_screen()))
      },
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
              'Formulário para Compartilhamento',
              style:
                  MyThemes.kreonRegular(fontSize: 19, textColor: Colors.white),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.005,
            ),
            Image.asset(
              'assets/forms.png',
              height: 100,
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
