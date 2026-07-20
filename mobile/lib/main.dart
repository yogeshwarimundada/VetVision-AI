import 'package:flutter/material.dart';
import 'screens/splash/splash_screen.dart';

void main() {
  runApp(const VetVisionApp());
}

class VetVisionApp extends StatelessWidget {
  const VetVisionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VetVision AI',
      home: const SplashScreen(),
    );
  }
}