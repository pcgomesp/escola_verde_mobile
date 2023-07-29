import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/drawer_appbar.dart';

class Form_screen extends StatefulWidget {
  const Form_screen({Key? key}) : super(key: key);

  @override
  State<Form_screen> createState() => _Form_screenState();
}

class _Form_screenState extends State<Form_screen> {
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse('https://docs.google.com/forms/d/e/1FAIpQLSdukICbYuaTvfq0fWHIiE-qPj0jTgDH83ZfCKsOFvFeq7kixg/viewform'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Fomulario'),
      drawer: DrawerAppbar(),
      body: WebViewWidget(controller: controller,),
    );
  }
}

