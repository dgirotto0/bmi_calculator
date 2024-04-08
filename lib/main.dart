import 'package:bmi_calculator/result/result_screen.dart';
import 'package:bmi_calculator/screens/home/home_screen.dart';
import 'package:bmi_calculator/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'config/config.dart';

void main() {
  runApp(const BIMApp());
}

class BIMApp extends StatelessWidget {
  const BIMApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BIM App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade500),
        textTheme: appTextTheme,
        useMaterial3: true,
      ),
      initialRoute: '/welcomeScreen',
      routes: {
        '/welcomeScreen': (context) => const WelcomeScreen(),
        '/homeScreen': (context) => const HomeScreen(),
        '/resultScreen': (context) => const ResultScreen(),
      },
    );
  }
}
