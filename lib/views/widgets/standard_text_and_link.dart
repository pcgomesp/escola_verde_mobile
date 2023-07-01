import 'package:escola_verde_mobile/views/widgets/view_more_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../themes/my_themes.dart';

class DescriptiveText extends StatelessWidget {
  const DescriptiveText(this.descriptionTitle, this.descriptionText, this.url,
      {super.key});

  final String descriptionTitle;
  final String descriptionText;
  final dynamic url;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          descriptionTitle,
          style: MyThemes.kreonRegular(textColor: MyThemes.colorTextTitle),
        ), //Title
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Text(
          descriptionText,
          style: MyThemes.fontTextBody(textColor: MyThemes.colorTextBody),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: View_More_Button(onPressed: () => _launchUrl(url)),
        ),
      ],
    );
  }
}

Future<void> _launchUrl(url) async {
  Uri trueUrl = Uri.parse(url);
  if (!await launchUrl(trueUrl, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $url');
  }
}
