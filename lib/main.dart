import 'package:escola_verde_mobile/data/cache_post_list.dart';
import 'package:escola_verde_mobile/views/screens/event_screen.dart';
import 'package:escola_verde_mobile/views/screens/home_screen.dart';
import 'package:escola_verde_mobile/views/screens/mysql_news.dart';
//import 'package:escova_verde_mobile/views/screens/main_menu.dart';
import 'package:escola_verde_mobile/views/screens/splash_screen.dart';
import 'package:escola_verde_mobile/views/screens/about_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:device_preview/device_preview.dart';
import 'package:escola_verde_mobile/MySQL/post_data.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

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
        '/new-screen': (context) => const MySQLNews()
        //'/': (context) => const MainMenu(),
      },
    );
  }
}
