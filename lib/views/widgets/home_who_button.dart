import 'package:flutter/material.dart';

import '../../themes/my_themes.dart';

class HomeWhoButton extends StatelessWidget {
  const HomeWhoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/about-screen');
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.14,
        width: MediaQuery.of(context).size.width * 0.86,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                //Botão quem somos
                width: MediaQuery.of(context).size.width * 0.86,
                height: MediaQuery.of(context).size.height * 0.12,
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
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.04),
                          Text(
                            'O projeto, venha Saber\nquem somos',
                            style: MyThemes.kreonRegular(),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: MediaQuery.of(context).size.width * 0.02,
              child: Image.asset(
                'assets/quem_somos.png',
                height: MediaQuery.of(context).size.height * 0.14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
