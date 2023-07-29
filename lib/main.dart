import 'dart:async';

import 'package:escola_verde_mobile/models/post_model.dart';
import 'package:escola_verde_mobile/views/screens/event_screen.dart';
import 'package:escola_verde_mobile/views/screens/home_screen.dart';
//import 'package:escova_verde_mobile/views/screens/main_menu.dart';
import 'package:escola_verde_mobile/views/screens/splash_screen.dart';
import 'package:escola_verde_mobile/views/screens/about_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:device_preview/device_preview.dart';
import 'package:mysql_client/mysql_client.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  final pool = MySQLConnectionPool(
    ***REMOVED***
***REMOVED***
***REMOVED***
***REMOVED***
***REMOVED***
***REMOVED***
  );

  var result = await pool.execute(
      " SELECT * FROM `wp_posts` WHERE post_status = 'publish' and post_type = 'post' and ID=439 ");
  late PostModel post;

  for (final row in result.rows) {
    post = PostModel.parse(row);
    print(post.id);
    print(post.author);
    print(post.date);
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
  }

  getImages(post: post);

  runApp(DevicePreview(
    enabled: false,
    builder: (context) => MyApp(),
  ));
  //runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Escola Verde Mobile',
      debugShowCheckedModeBanner: false,
      locale: const Locale('pt', 'BR'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff74ab46)),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const SplashScreen(),
        '/home-screen': (context) => const HomeScreen(),
        '/about-screen': (context) => const AboutScreen(),
        '/event-screen': (context) => const EventScreen(),
        //'/': (context) => const MainMenu(),
      },
    );
  }
}
