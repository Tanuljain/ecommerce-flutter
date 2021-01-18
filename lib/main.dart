import 'package:flutter/material.dart';
import 'screens/onBoarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: OnboardingScreen(),
          minimum: const EdgeInsets.all(0),
        ),
      ),
    );
  }
}
