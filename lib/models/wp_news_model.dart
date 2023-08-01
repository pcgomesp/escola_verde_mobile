import 'package:escola_verde_mobile/models/post_model.dart';
import 'package:mysql_client/mysql_client.dart';

class AllNewsFromWordpressModel {
  final List<PostModel> allNews = [];
  final List<List<String?>> allImagesArray = [];

  Future<List<PostModel>> getAllNews(MySQLConnectionPool pool) async {
    var allPosts = await pool.execute(
        "SELECT * FROM `wp_posts` WHERE post_status = 'publish' and post_type = 'post' ORDER BY `wp_posts`.`post_date` DESC");
    PostModel post;
    List<String?> images;
    for (final row in allPosts.rows) {
      post = PostModel.parse(row);
      images = await getImages(post: post, pool: pool);
      allNews.add(post);
      allImagesArray.add(images);
    }
    return allNews;
  }

  Future<List<String?>> getImages(
      {required PostModel post, required MySQLConnectionPool pool}) async {
    List<String?> ImgUrls = [];
    var resultimages = await pool.execute(
        "SELECT * FROM wp_posts WHERE post_status = 'inherit' and post_type = 'attachment' and post_parent = :pp",
        {"pp": post.id});
    for (final row in resultimages.rows) {
      ImgUrls.add(row.colByName('guid'));
    }
    return ImgUrls;
  }
}
