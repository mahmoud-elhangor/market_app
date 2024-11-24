import 'package:flutter/material.dart';
import 'package:market_app/view/home_screen.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (c) => const HomeScreen(),
      },
      title: 'Market ',
      home: const HomeScreen(),
    );
  }
}
