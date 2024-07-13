// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Infoscreen extends StatelessWidget {
  Infoscreen({super.key});

  dynamic colorb = const Color.fromARGB(255, 58, 58, 58);
  dynamic colort = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorb,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            CupertinoIcons.back,
            color: colort,
          ),
        ),
        backgroundColor: colorb,
        title: Text(
          "App creater",
          style: TextStyle(
            color: colort,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Hey hi ",
              style: TextStyle(color: colort, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "I created this game if you have any concerns you can send mail to this gmail ",
              style: TextStyle(color: colort, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "v.saravanan.c@gmail.com",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "If you want the sources code you can check the ",
              style: TextStyle(color: colort, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "GIT --> ",
                  style: TextStyle(color: colort, fontSize: 20),
                ),
                Text(
                  "Saravanan-vc",
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
