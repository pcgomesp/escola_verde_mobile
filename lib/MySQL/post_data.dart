import 'package:escola_verde_mobile/models/post_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mysql_client/mysql_client.dart';
import 'package:escola_verde_mobile/data/cache_post_list.dart';

class PostData {
  /* 
  MySQLConnectionPool connectionMySql() {
    return MySQLConnectionPool(
      host: dotenv.get('HOST_EV'),
      port: int.parse(dotenv.get('PORT_EV')),
      userName: dotenv.get('USER_EV'),
      password: dotenv.get('PASS_EV'),
      maxConnections: int.parse(dotenv.get('MAX_CONNEC_EV')),
      databaseName: dotenv.get('DATABASE_WP_EV'),
    );
  }
*/
  static Future<List<PostModel>> getPosts() async {
    await dotenv.load(fileName: ".env");

    final pool = MySQLConnectionPool(
      host: dotenv.get('HOST_EV'),
      port: int.parse(dotenv.get('PORT_EV')),
      userName: dotenv.get('USER_EV'),
      password: dotenv.get('PASS_EV'),
      maxConnections: int.parse(dotenv.get('MAX_CONNEC_EV')),
      databaseName: dotenv.get('DATABASE_WP_EV'),
    );

    await pool
        .execute(
            "SELECT * FROM `wp_posts` WHERE post_status = 'publish' and post_type = 'post' ORDER BY `wp_posts`.`post_date` DESC")
        .then(
      (value) {
        for (final row in value.rows) {
          posts.add(PostModel.parse(row));
        }
      },
    );
    return posts;
  }

  static Future<List<String?>> getImages({required PostModel post}) async {
    await dotenv.load(fileName: ".env");

    final pool = MySQLConnectionPool(
      host: dotenv.get('HOST_EV'),
      port: int.parse(dotenv.get('PORT_EV')),
      userName: dotenv.get('USER_EV'),
      password: dotenv.get('PASS_EV'),
      maxConnections: int.parse(dotenv.get('MAX_CONNEC_EV')),
      databaseName: dotenv.get('DATABASE_WP_EV'),
    );

    List<String?> ImgUrls = [];

    var resultimages = await pool.execute(
        "SELECT * FROM wp_posts WHERE post_status = 'inherit' and post_type = 'attachment' and post_parent = :pp",
        {"pp": post.id});
    for (final row in resultimages.rows) {
      ImgUrls.add(row.colByName('guid'));
    }
    print(ImgUrls);
    return ImgUrls;
  }
}
