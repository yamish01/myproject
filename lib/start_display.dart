import 'package:flutter/material.dart';

class StartDisplay extends StatefulWidget {
  const StartDisplay({super.key});

  @override
  State<StartDisplay> createState() => _StartDisplayState();
} //class #3

class _StartDisplayState extends State<StartDisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Center(child: Text("This is Title"))),
      body: Column(
        children: [
          Text("this the start screen"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("this is working space"),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star_half),
                ],
              ),
              Text("168 Reviews"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(Icons.hourglass_top),
                    Text("prep"),
                    Text("12-20 mint"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(Icons.microwave),
                    Text("cooking"),
                    Text("30mint"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Icon(Icons.receipt_long),
                    Text("bill"),
                    Text("thanks for coming"),
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              "ingradient required",
              style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 20,
                  color: Color.fromARGB(137, 205, 5, 5)),
            ),
          ),
          Container(
              child: Row(
            children: [Icon(Icons.circle)],
          ))
        ],
      ),
    ); //scaffold
  }
}
