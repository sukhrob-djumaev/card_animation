import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data/graph_model.dart';
import 'pages/main_page.dart';
import 'pages/spending_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GraphModel(),
      child: MaterialApp(
        onGenerateRoute: (settings) {
          if (settings.name == '/') {
            return MaterialPageRoute(
              builder: (context) => const MainPage(),
            );
          } else if (settings.name == '/spending') {
            return PageRouteBuilder(
              settings: settings,
              pageBuilder: (context, animation, secondaryAnimation) => const SpendingPage(),
              transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(
                opacity: animation,
                child: child,
              ),
            );
          }
          return null;
        },
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF2D6BE6),
          ),
          textTheme: const TextTheme().apply(
            bodyColor: const Color(0xFF000000),
            displayColor: const Color(0xFF000000),
          ),
          fontFamily: 'Satoshi',
          scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
