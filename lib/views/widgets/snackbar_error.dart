import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../themes/my_themes.dart';

class SnackErrorMessage {
  const SnackErrorMessage(context);

  static showSnack(context) {
    showTopSnackBar(
        Overlay.of(context),
        CustomSnackBar.error(
          message:
              'Ops, ocorreu um Erro!\nPor Favor, tente novamente em instantes',
          textStyle: MyThemes.fontTextBody(textColor: Colors.white),
          backgroundColor: MyThemes.colorTextMainScreen,
          maxLines: 3,
          textScaleFactor: 1.1,
        ));
  }
}
