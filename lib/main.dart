import 'package:flutter/material.dart';

import 'views/onborading_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const OnBoardingView(),
      theme: ThemeData(primaryColor: const Color(0xff6362ea)),
      debugShowCheckedModeBanner: false,
    );
  }
}
