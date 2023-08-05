import 'package:escola_verde_mobile/themes/my_themes.dart';
import 'package:escola_verde_mobile/views/widgets/event_button.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/drawer_appbar.dart';

import 'package:escola_verde_mobile/data/eventos_estaticos.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar('Eventos'),
      drawer: const DrawerAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: event_list
              .map((evento) => EventButton(
                  titulo: evento.title,
                  imagePath: evento.imagePath,
                  onTap: () {},
                  date: 'testes' /*evento.date*/))
              .toList(),
        ),
      ),
    );
  }
}
