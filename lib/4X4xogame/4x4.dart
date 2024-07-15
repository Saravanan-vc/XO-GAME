// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xogame/PlayScreen/Play.dart';
import 'package:xogame/info/infoScreen.dart';

class player4x4 extends StatefulWidget {
  const player4x4({super.key});

  @override
  State<player4x4> createState() => _player4x4State();
}

class _player4x4State extends State<player4x4> {
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
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Playscreen(),
                    ),
                  );
                },
                child: Text(
                  "3X3",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
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
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemCount: screen.length,
              itemBuilder: (context, Index) => Padding(
                padding: const EdgeInsets.all(2.0),
                child: GestureDetector(
                  onTap: () {
                    if (screen[Index] == "") {
                      setState(() {
                        xo = !xo;
                        screen[Index] = xo ? "X" : "O";
                      });
                      check();
                    }
                    // print(screen[Index]);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color.fromARGB(66, 129, 128, 128),
                    ),
                    width: MediaQuery.of(context).size.width * 0.025,
                    child: Center(
                      child: Text(
                        // "$Index",
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

  restart() {
    List again = [
      "",
      "",
      "",
      "",
      "",
      "",
      "",
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
    screen.clear();
    screen.addAll(again);
  }

  check() {
    if ((screen[0] == screen[1]) &&
        (screen[2] == screen[3]) &&
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
    if ((screen[4] == screen[5]) &&
        (screen[6] == screen[7]) &&
        screen[4] != "") {
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
    if ((screen[8] == screen[9]) &&
        (screen[10] == screen[11]) &&
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
    if ((screen[12] == screen[13]) &&
        (screen[14] == screen[15]) &&
        screen[12] != "") {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("WINNER IS ${screen[12]}"),
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
    //
    if ((screen[0] == screen[4]) &&
        (screen[8] == screen[12]) &&
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
    if ((screen[1] == screen[5]) &&
        (screen[9] == screen[13]) &&
        screen[5] != "") {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("WINNER IS ${screen[5]}"),
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
    if ((screen[2] == screen[6]) &&
        (screen[10] == screen[14]) &&
        screen[6] != "") {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("WINNER IS ${screen[6]}"),
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
    if ((screen[3] == screen[7]) &&
        (screen[11] == screen[15]) &&
        screen[11] != "") {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("WINNER IS ${screen[11]}"),
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
    //
    if ((screen[0] == screen[5]) &&
        (screen[10] == screen[15]) &&
        screen[10] != "") {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("WINNER IS ${screen[10]}"),
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
    if ((screen[3] == screen[6]) &&
        (screen[9] == screen[12]) &&
        screen[6] != "") {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("WINNER IS ${screen[6]}"),
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
}
