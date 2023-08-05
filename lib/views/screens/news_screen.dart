import 'package:flutter/material.dart';
import 'package:escola_verde_mobile/views/widgets/event_button.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/drawer_appbar.dart';

import 'package:escola_verde_mobile/data/eventos_estaticos.dart';

class News_screen extends StatefulWidget {
  const News_screen({Key? key}) : super(key: key);

  @override
  State<News_screen> createState() => _News_screenState();
}

class _News_screenState extends State<News_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar('Noticias'),
      drawer: const DrawerAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: news_list
              .map((evento) => EventButton(
                  titulo: evento.title,
                  imagePath: Image.asset(evento.imagePath),
                  onTap: () {},
                  date: 'Teste'))
              .toList(),
        ),
      ),
    );
  }
}
