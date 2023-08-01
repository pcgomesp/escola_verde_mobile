import 'package:escola_verde_mobile/models/post_model.dart';
import 'package:escola_verde_mobile/views/widgets/event_button.dart';
import 'package:flutter/material.dart';
import '../../models/event_model.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/drawer_appbar.dart';
import 'package:mysql_client/mysql_client.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class MySQLNews extends StatefulWidget {
  const MySQLNews({super.key});

  @override
  State<MySQLNews> createState() => _MySQLNewsState();
}

class _MySQLNewsState extends State<MySQLNews> {
  final pool = MySQLConnectionPool(
    host: dotenv.get('HOST_EV'),
    port: int.parse(dotenv.get('PORT_EV')),
    userName: dotenv.get('USER_EV'),
    password: dotenv.get('PASS_EV'),
    maxConnections: int.parse(dotenv.get('MAX_CONNEC_EV')),
    databaseName: dotenv.get('DATABASE_WP_EV'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar('Notícias'),
      drawer: const DrawerAppbar(),
      body: FutureBuilder(
        future: getAllNews(pool),
        builder: (context, snapshot) {
          List<Widget> children = [];
          if (snapshot.hasData) {
            for (int i = 0; i < 10; i++) {
              var helper = snapshot.data!.elementAt(i);
              children.add(EventButton(
                  titulo: helper.title!,
                  imagePath: '',
                  onTap: () {},
                  date: DateTime.parse(helper.date!)));
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

  Future<List<PostModel>> getAllNews(MySQLConnectionPool pool) async {
    var allPosts = await pool.execute(
        "SELECT * FROM `wp_posts` WHERE post_status = 'publish' and post_type = 'post' ORDER BY `wp_posts`.`post_date` DESC");
    List<PostModel> news = [];
    PostModel post;
    for (final row in allPosts.rows) {
      post = PostModel.parse(row);
      news.add(post);
    }
    print("hit here");
    print("news");
    return news;
  }

  /* for (final row in result.rows) {
    post = PostModel.parse(row);
  }

  Future<List<String?>> getImages({required PostModel post}) async {
    List<String?> ImgUrls = [];
    var resultimages = await pool.execute(
        "SELECT * FROM wp_posts WHERE post_status = 'inherit' and post_type = 'attachment' and post_parent = :pp",
        {"pp": post.id});
    for (final row in resultimages.rows) {
      ImgUrls.add(row.colByName('guid'));
    }
    print(ImgUrls);
    return ImgUrls;
  } */
}
