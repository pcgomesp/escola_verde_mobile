import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

import '../../themes/my_themes.dart';

class EventButton extends StatelessWidget {
  const EventButton(
      {super.key,
      required this.titulo,
      required this.imagePath,
      required this.onTap,
      required this.date});

  final String titulo;
  final String imagePath;
  final void Function() onTap;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting();
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.014),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.16,
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
        ),
        child: Container(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.01,
            bottom: MediaQuery.of(context).size.height * 0.01,
            right: MediaQuery.of(context).size.height * 0.02,
            left: MediaQuery.of(context).size.height * 0.04,
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titulo,
                      style: MyThemes.kreonRegular(
                          textColor: Colors.black, fontSize: 12),
                    ),
                    Text(
                      DateFormat("dd 'de' MMMM 'de' yyyy", "pt_BR")
                          .format(date),
                      //DateFormat.,
                      style: MyThemes.kreonRegular(
                          textColor: const Color(0xFF636363), fontSize: 12),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.14,
                  width: MediaQuery.of(context).size.width * 0.14,
                  child: Image.asset(
                    imagePath,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}