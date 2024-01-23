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
      //appBar: AppBar(
      //   backgroundColor: Colors.blueAccent,
      // title: const Center(child: Text("This is Title"))),
      body: Column(
        children: [
          Stack(children: [
            Image.asset(
              "images/Mexican-Red-Bean-Salad-with-Corn-and-Chickpeas-Recipe.jpg",
              height: 200,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            const Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Center(
                    child: Text(
                  "corn salad with red beans",
                  style: TextStyle(
                      fontSize: 30, color: Color.fromARGB(255, 255, 255, 255)),
                )))
          ]),
          const Text("this the start screen"),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
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
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  children: [
                    Icon(Icons.hourglass_top),
                    Text("prep"),
                    Text("12-20 mint"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  children: [
                    Icon(Icons.microwave),
                    Text("cooking"),
                    Text("30mint"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40),
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
            padding: EdgeInsetsDirectional.symmetric(vertical: 40),
            child: Text(
              "ingradient required",
              style: TextStyle(
                  fontWeight: FontWeight.w100,
                  fontSize: 20,
                  color: Colors.blue),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 2),
            color: const Color.fromARGB(255, 136, 136, 136),
            child: Row(children: [
              Container(
                margin: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.green),
                child: const Icon(Icons.add, size: 24, color: Colors.white),
              ),
              const Text("Loren Ipsum"),
            ]),
          ),
          Container(
            color: const Color.fromARGB(221, 118, 117, 117),
            child: Row(children: [
              Container(
                margin: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 191, 9, 9)),
                child: const Icon(Icons.add, size: 24, color: Colors.white),
              ),
              const Text("Loren Ipsum"),
            ]),
          ),
        ],
      ),
    ); //scaffold
  }
}
