import 'package:flutter/material.dart';
import 'package:flutter_wallet_app_clone/Presentation/Screens/CardScreen/card_screen.dart';
import 'package:flutter_wallet_app_clone/Presentation/Screens/home/home_page_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePageScreen(),
        '/cardScreen': (context) => const CardScreen(),
      },
    );
  }
}
