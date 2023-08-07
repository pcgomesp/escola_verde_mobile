import 'package:escola_verde_mobile/models/post_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mysql_client/mysql_client.dart';
import 'package:escola_verde_mobile/data/cache_post_list.dart';

class PostData {
  static Future<List<PostModel>> getPosts(
      {required int howManyNews, required int currentPage}) async {
    if (posts.length < (howManyNews + currentPage)) {
      await dotenv.load(fileName: ".env");

      final pool = MySQLConnectionPool(
        host: dotenv.get('HOST_EV'),
        port: int.parse(dotenv.get('PORT_EV')),
        userName: dotenv.get('USER_EV'),
        password: dotenv.get('PASS_EV'),
        maxConnections: int.parse(dotenv.get('MAX_CONNEC_EV')),
        databaseName: dotenv.get('DATABASE_WP_EV'),
      );

      await pool.execute(
          "SELECT * FROM `wp_posts` WHERE post_status = 'publish' and post_type = 'post' ORDER BY `wp_posts`.`post_date` DESC LIMIT :curpage , :howmany ",
          {"howmany": howManyNews, "curpage": currentPage}).then(
        (value) async {
          for (final row in value.rows) {
            posts.add(PostModel.parse(row));
            if (posts[posts.length - 1].images.isEmpty) {
              posts[posts.length - 1].images.addAll(
                  await getImages(post: posts[posts.length - 1], pool: pool));
            }
          }
        },
      );
    }
    //return posts;
    return posts.sublist(currentPage, (currentPage + howManyNews));
  }

  static Future<List<String>> getImages(
      {required PostModel post, required MySQLConnectionPool pool}) async {
    List<String> allImages = [];

    var resultimages = await pool.execute(
        "SELECT * FROM wp_posts WHERE post_status = 'inherit' and post_type = 'attachment' and post_parent = :pp and (post_mime_type='image/png' or post_mime_type='image/jpeg') ORDER BY `wp_posts`.`post_date` DESC",
        {"pp": post.id});
    for (final row in resultimages.rows) {
      allImages.add(row.colByName('guid')!);
    }
    return allImages;
  }
}
