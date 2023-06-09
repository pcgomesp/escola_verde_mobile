import 'package:escola_verde_mobile/views/screens/home_screen.dart';
//import 'package:escova_verde_mobile/views/screens/main_menu.dart';
import 'package:escola_verde_mobile/views/screens/splash_screen.dart';
import 'package:escola_verde_mobile/views/screens/about_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
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
        //'/': (context) => const MainMenu(),
      },
    );
  }
}
