// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:xogame/PlayScreen/Play.dart';

class Splashs extends StatefulWidget {
  const Splashs({super.key});

  @override
  State<Splashs> createState() => _SplashsState();
}

class _SplashsState extends State<Splashs> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 4),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Playscreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 58, 58, 58),
      body: Center(
          child: SizedBox(
        child: Image.asset("Assets/skull.png"),
      )),
    );
  }
}
