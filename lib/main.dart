// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:xogame/PlayScreen/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splashs(),
    );
  }
}
