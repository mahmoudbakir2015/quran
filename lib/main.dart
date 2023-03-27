import 'package:flutter/material.dart';
import 'package:quran/layout/home_layout.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Holy Quran',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeLayout(),
    );
  }
}
