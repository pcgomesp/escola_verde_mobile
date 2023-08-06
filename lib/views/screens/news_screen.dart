import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:escola_verde_mobile/models/post_model.dart';
import 'package:escola_verde_mobile/themes/my_themes.dart';
import 'package:escola_verde_mobile/views/widgets/custom_text_html.dart';
import 'package:flutter/material.dart';
import 'package:escola_verde_mobile/views/widgets/event_button.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/drawer_appbar.dart';

import 'package:escola_verde_mobile/data/eventos_estaticos.dart';

class News_screen extends StatefulWidget {
  const News_screen({Key? key, required this.informationsFromPost})
      : super(key: key);

  final PostModel informationsFromPost;

  @override
  State<News_screen> createState() => _News_screenState();
}

class _News_screenState extends State<News_screen> {
  @override
  Widget build(BuildContext context) {
    final bool _haveImage = widget.informationsFromPost.images.isNotEmpty;

    final List<Widget> imageSliders = widget.informationsFromPost.images
        .map(
          (item) => Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    CachedNetworkImage(
                      imageUrl: item,
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                            '${widget.informationsFromPost.images.indexOf(item)}ª',
                            style: MyThemes.fontSideMenu()),
                      ),
                    ),
                  ],
                )),
          ),
        )
        .toList();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(widget.informationsFromPost.title!),
      drawer: const DrawerAppbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
          child: Column(
            children: [
              Text(
                widget.informationsFromPost.title!,
                style: MyThemes.fontTextTitle(
                    fontSize: 18, textColor: MyThemes.colorTextTitle),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 25,
              ),
              if (_haveImage)
                CachedNetworkImage(
                  imageUrl: widget.informationsFromPost.images[0],
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                ),
              CustomHtmlText(htmlText: widget.informationsFromPost.content!),
              const SizedBox(
                height: 25,
              ),
              if (_haveImage)
                CarouselSlider(
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height * 0.4,
                      enableInfiniteScroll: false,
                    ),
                    items: imageSliders)
            ],
          ),
        ),
      ),
    );
  }
}
