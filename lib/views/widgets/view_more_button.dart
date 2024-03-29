import 'package:escola_verde_mobile/themes/my_themes.dart';
import 'package:flutter/material.dart';

class View_More_Button extends StatelessWidget {
  const View_More_Button({
    super.key,
    required this.onPressed,
  });

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        alignment: Alignment.centerLeft,
        backgroundColor: MaterialStatePropertyAll(MyThemes.colorButton),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Ver mais',
              textScaleFactor: 1.1,
              style: MyThemes.kreonRegular(textColor: Colors.white)),
          const SizedBox(width: 5),
          SizedBox(
            height: 25,
            width: 25,
            child: Image.asset('assets/setas.png'),
          ),
        ],
      ),
    );
  }
}
