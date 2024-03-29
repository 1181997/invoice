import 'package:flutter/material.dart';
import 'package:invoice/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Invoice Generator',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

