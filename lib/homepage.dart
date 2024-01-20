import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 102, 78, 209),
          title: Center(
              child: Text("Corn Salad with Red Beans ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ))),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Icon(Icons.restaurant),
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "305.5",
                          style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 20,
                              color: Colors.black),
                        )),
                    Text(
                      "Calories",
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 10,
                          color: Colors.black54),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Icon(Icons.alarm),
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "20mins",
                          style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 20,
                              color: Colors.black),
                        )),
                    Text(
                      "Time",
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 10,
                          color: Colors.black54),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Icon(Icons.people),
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "4",
                          style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 20,
                              color: Colors.black),
                        )),
                    Text(
                      "serve",
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 10,
                          color: Colors.black54),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  Icon(Icons.shopping_cart),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        "8",
                        style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 20,
                            color: Colors.black),
                      )),
                  Text(
                    "count",
                    style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 10,
                        color: Colors.black54),
                  ),
                ]),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("ingradiant required "),
          )
        ]));
  }
}
