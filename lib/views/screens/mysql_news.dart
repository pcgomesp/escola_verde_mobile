import 'package:escola_verde_mobile/models/post_model.dart';
import 'package:escola_verde_mobile/views/widgets/event_button.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
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
  static const _pageSize = 10;

  final PagingController<int, PostModel> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final newItems =
          await PostData.getPosts(howManyNews: _pageSize, currentPage: pageKey);
      final isLastPage = newItems.length < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + newItems.length;
        _pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar('Notícias do Site'),
      drawer: const DrawerAppbar(),
      body: PagedListView<int, PostModel>(
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<PostModel>(
            itemBuilder: (context, item, index) =>
                EventButton.parse(posts[index], context)),
      ),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
