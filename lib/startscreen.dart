import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(children: [
          Image.asset("images/background.png"),
          const Positioned(
              top: 90,
              left: 0,
              right: 0,
              child: Center(
                  child: Icon(
                Icons.account_circle,
                size: 60,
                color: Color.fromARGB(255, 252, 251, 250),
              ))),
          const Padding(
              padding: EdgeInsets.all(150),
              child: Center(
                  child: Text(
                "User",
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
              ))),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 175),
            child: Center(
              child: Text("detail",
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 255, 255, 255))),
            ),
          ),
        ]),
      ]),
    );
  }
}
