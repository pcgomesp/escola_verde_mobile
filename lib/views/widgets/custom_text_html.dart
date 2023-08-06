import 'package:escola_verde_mobile/themes/my_themes.dart';
import 'package:escola_verde_mobile/views/widgets/snackbar_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:fwfh_url_launcher/fwfh_url_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomHtmlText extends StatelessWidget {
  const CustomHtmlText({super.key, required this.htmlText});

  final String htmlText;

  @override
  Widget build(BuildContext context) {
    return HtmlWidget(
      htmlText,
      textStyle: MyThemes.fontTextBody(),
      factoryBuilder: () => CustomUrlFactory(),
      onTapUrl: (p0) async {
        _launchUrl(p0, context);
        throw Exception('Could not launch $p0');
      },
    );
  }
}

class CustomUrlFactory extends WidgetFactory with UrlLauncherFactory {}

Future<void> _launchUrl(url, context) async {
  Uri trueUrl = Uri.parse(url);
  try {
    await launchUrl(trueUrl, mode: LaunchMode.externalApplication);
  } catch (_) {
    SnackErrorMessage.showSnack(context);
  }
}
