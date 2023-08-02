import 'package:escola_verde_mobile/views/widgets/event_button.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/drawer_appbar.dart';

import 'package:escola_verde_mobile/MySQL/post_data.dart';
import 'package:escola_verde_mobile/data/cache_post_list.dart';

class MySQLNews extends StatefulWidget {
  const MySQLNews({super.key});

  @override
  State<MySQLNews> createState() => _MySQLNewsState();
}

class _MySQLNewsState extends State<MySQLNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar('Notícias'),
      drawer: const DrawerAppbar(),
      body: posts.isNotEmpty
          ? ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return EventButton(
                    titulo: posts[index].title!,
                    imagePath: '',
                    onTap: () {},
                    date: posts[index].date!);
              })
          : FutureBuilder(
              future: PostData.getPosts(),
              builder: (context, snapshot) {
                List<Widget> children = [];
                if (snapshot.hasData) {
                  for (int i = 0; i < 10; i++) {
                    var helper = snapshot.data!.elementAt(i);
                    children.add(EventButton(
                        titulo: helper.title!,
                        imagePath: '',
                        onTap: () {},
                        date: helper.date!));
                  }
                } else if (snapshot.hasError) {
                  return Text("deu erro");
                } else {
                  children = const <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: CircularProgressIndicator(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text('Carregando Notícias'),
                    ),
                  ];
                }
                return Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: children,
                    ),
                  ),
                );
              },
            ),
    );
  }
}
