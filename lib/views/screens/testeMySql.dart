import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/drawer_appbar.dart';

class TesteMySql extends StatefulWidget {
  const TesteMySql({super.key});

  @override
  State<TesteMySql> createState() => _TesteMySqlState();
}

class _TesteMySqlState extends State<TesteMySql> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFECEBE1),
        appBar: const CustomAppBar('Teste SQL'),
        drawer: const DrawerAppbar(),
        body: Container());
  }
}
