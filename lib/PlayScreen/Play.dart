// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xogame/info/infoScreen.dart';

class Playscreen extends StatefulWidget {
  const Playscreen({super.key});

  @override
  State<Playscreen> createState() => _PlayscreenState();
}

class _PlayscreenState extends State<Playscreen> {
  List screen = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];

  bool xo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 58, 58, 58),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Infoscreen(),
                    ),
                  );
                },
                icon: Icon(
                  CupertinoIcons.info,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    restart();
                  });
                },
                icon: Icon(
                  CupertinoIcons.restart,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Center(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemCount: screen.length,
              itemBuilder: (context, Index) => Padding(
                padding: const EdgeInsets.all(2.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      xo = !xo;
                      screen[Index] = xo ? "X" : "O";
                    });
                    check();
                    print(screen[Index]);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color.fromARGB(66, 129, 128, 128),
                    ),
                    width: MediaQuery.of(context).size.width * 0.025,
                    child: Center(
                      child: Text(
                        screen[Index],
                        style: TextStyle(fontSize: 90, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  check() {
    if ((screen[0] == screen[1]) &&
        (screen[1] == screen[2]) &&
        screen[0] != "") {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("WINNER IS ${screen[0]}"),
          content: Text("DO YOU WANT TO RESTART THE GAME"),
          actions: [
            TextButton(
                onPressed: () {
                  setState(() {
                    restart();
                  });
                  Navigator.pop(context);
                },
                child: Text("YES"))
          ],
        ),
      );
    }
    if ((screen[0] == screen[3]) &&
        (screen[3] == screen[6]) &&
        screen[0] != "") {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("WINNER IS ${screen[0]}"),
          content: Text("DO YOU WANT TO RESTART THE GAME"),
          actions: [
            TextButton(
                onPressed: () {
                  setState(() {
                    restart();
                  });
                  Navigator.pop(context);
                },
                child: Text("YES"))
          ],
        ),
      );
    }
    if ((screen[1] == screen[4]) &&
        (screen[4] == screen[7]) &&
        screen[1] != "") {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("WINNER IS ${screen[0]}"),
          content: Text("DO YOU WANT TO RESTART THE GAME"),
          actions: [
            TextButton(
                onPressed: () {
                  setState(() {
                    restart();
                  });
                  Navigator.pop(context);
                },
                child: Text("YES"))
          ],
        ),
      );
    }
    if ((screen[6] == screen[7]) &&
        (screen[7] == screen[8]) &&
        screen[6] != "") {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("WINNER IS ${screen[8]}"),
          content: Text("DO YOU WANT TO RESTART THE GAME"),
          actions: [
            TextButton(
                onPressed: () {
                  setState(() {
                    restart();
                  });
                  Navigator.pop(context);
                },
                child: Text("YES"))
          ],
        ),
      );
    }
    if ((screen[8] == screen[5]) &&
        (screen[5] == screen[2]) &&
        screen[8] != "") {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("WINNER IS ${screen[8]}"),
          content: Text("DO YOU WANT TO RESTART THE GAME"),
          actions: [
            TextButton(
                onPressed: () {
                  setState(() {
                    restart();
                  });
                  Navigator.pop(context);
                },
                child: Text("YES"))
          ],
        ),
      );
    }
    if ((screen[8] == screen[4]) &&
        (screen[4] == screen[0]) &&
        screen[8] != "") {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("WINNER IS ${screen[4]}"),
          content: Text("DO YOU WANT TO RESTART THE GAME"),
          actions: [
            TextButton(
                onPressed: () {
                  setState(() {
                    restart();
                  });
                  Navigator.pop(context);
                },
                child: Text("YES"))
          ],
        ),
      );
    }
    if ((screen[6] == screen[4]) &&
        (screen[4] == screen[2]) &&
        screen[6] != "") {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("WINNER IS ${screen[4]}"),
          content: Text("DO YOU WANT TO RESTART THE GAME"),
          actions: [
            TextButton(
                onPressed: () {
                  setState(() {
                    restart();
                  });
                  Navigator.pop(context);
                },
                child: Text("YES"))
          ],
        ),
      );
    }
  }

  restart() {
    screen[0] = "";
    screen[1] = "";
    screen[2] = "";
    screen[3] = "";
    screen[4] = "";
    screen[5] = "";
    screen[6] = "";
    screen[7] = "";
    screen[8] = "";
  }
}
