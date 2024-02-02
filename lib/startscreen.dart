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
      Container(
        height: MediaQuery.of(context).size.height / 2.1,
        width: MediaQuery.of(context).size.width / 1,
        child: Stack(children: [
          Positioned(
            child: Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 80, 79, 79),
                        blurStyle: BlurStyle.normal,
                        blurRadius: 8,
                        spreadRadius: 3,
                        offset: Offset(03, 05),
                      )
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("images/bck1.jpg"),
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(70),
                        bottomRight: Radius.circular(70))),
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 80,
                        color: Color.fromARGB(
                          255,
                          252,
                          251,
                          250,
                        ),
                        shadows: [
                          Shadow(
                              color: Color.fromARGB(255, 102, 102, 102),
                              blurRadius: 4,
                              offset: Offset(03, 05))
                        ],
                      ),
                      Text(
                        "User",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 255, 255, 255),
                            shadows: [
                              Shadow(
                                  color: Color.fromARGB(255, 102, 102, 102),
                                  blurRadius: 6,
                                  offset: Offset(03, 05))
                            ]),
                      ),
                      Text("detail",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 255, 255, 255),
                              shadows: [
                                Shadow(
                                    color: Color.fromARGB(255, 102, 102, 102),
                                    blurRadius: 6,
                                    offset: Offset(03, 05))
                              ])),
                    ],
                  ),
                )),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(children: [
                      Expanded(
                          child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 102, 102, 102),
                                blurStyle: BlurStyle.normal,
                                blurRadius: 8,
                                spreadRadius: 3,
                                offset: Offset(03, 05),
                              )
                            ],
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(28)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.home,
                              size: 30,
                              shadows: [
                                Shadow(
                                    color: Color.fromARGB(255, 102, 102, 102),
                                    blurRadius: 4)
                              ],
                            ),
                            Text(
                              "Home",
                              style: TextStyle(fontSize: 20, shadows: [
                                Shadow(
                                    color: Color.fromARGB(255, 102, 102, 102),
                                    blurRadius: 4)
                              ]),
                            ),
                          ],
                        ),
                      )),
                      Expanded(
                          child: Container(
                        margin: const EdgeInsets.all(12),
                        width: 20,
                        height: 100,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 80, 79, 79),
                                blurStyle: BlurStyle.normal,
                                blurRadius: 8,
                                spreadRadius: 3,
                                offset: Offset(03, 05),
                              )
                            ],
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(28)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.devices,
                              size: 30,
                              shadows: [
                                Shadow(color: Colors.black, blurRadius: 4)
                              ],
                            ),
                            Text(
                              "Link",
                              style: TextStyle(fontSize: 20, shadows: [
                                Shadow(color: Colors.black, blurRadius: 4)
                              ]),
                            ),
                          ],
                        ),
                      )),
                    ]),
                  ],
                ),
              )),
        ]),
      ),
      Row(children: [
        Expanded(
            child: Container(
          margin: const EdgeInsets.all(12),
          width: 20,
          height: 100,
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 80, 79, 79),
                  blurStyle: BlurStyle.normal,
                  blurRadius: 8,
                  spreadRadius: 3,
                  offset: Offset(03, 05),
                )
              ],
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(28)),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.key,
                size: 30,
                shadows: [Shadow(color: Color.fromARGB(255, 102, 102, 102))],
              ),
              Text(
                "Password",
                style: TextStyle(fontSize: 20, shadows: [
                  Shadow(color: Color.fromARGB(255, 102, 102, 102))
                ]),
              ),
            ],
          ),
        )),
        Expanded(
            child: Container(
          margin: const EdgeInsets.all(12),
          width: 20,
          height: 100,
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 80, 79, 79),
                  blurStyle: BlurStyle.normal,
                  blurRadius: 8,
                  spreadRadius: 3,
                  offset: Offset(03, 05),
                )
              ],
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(28)),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.file_open,
                size: 30,
                shadows: [
                  Shadow(
                      color: Color.fromARGB(255, 102, 102, 102), blurRadius: 4)
                ],
              ),
              Text(
                "Files",
                style: TextStyle(fontSize: 20, shadows: [
                  Shadow(
                      color: Color.fromARGB(255, 102, 102, 102), blurRadius: 4)
                ]),
              ),
            ],
          ),
        )),
      ]),
      Row(children: [
        Expanded(
            child: Container(
          margin: const EdgeInsets.all(12),
          width: 20,
          height: 100,
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 80, 79, 79),
                  blurStyle: BlurStyle.normal,
                  blurRadius: 8,
                  spreadRadius: 3,
                  offset: Offset(03, 05),
                )
              ],
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(28)),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.dataset_linked,
                size: 30,
                shadows: [
                  Shadow(
                      color: Color.fromARGB(255, 102, 102, 102), blurRadius: 4)
                ],
              ),
              Text(
                "Database Link",
                style: TextStyle(fontSize: 20, shadows: [
                  Shadow(
                      color: Color.fromARGB(255, 102, 102, 102), blurRadius: 4)
                ]),
              ),
            ],
          ),
        )),
        Expanded(
            child: Container(
          margin: const EdgeInsets.all(12),
          width: 20,
          height: 100,
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 80, 79, 79),
                  blurStyle: BlurStyle.normal,
                  blurRadius: 8,
                  spreadRadius: 3,
                  offset: Offset(03, 05),
                )
              ],
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(28)),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.settings,
                size: 30,
                shadows: [
                  Shadow(
                      color: Color.fromARGB(255, 102, 102, 102), blurRadius: 4)
                ],
              ),
              Text(
                "Settings",
                style: TextStyle(fontSize: 20, shadows: [
                  Shadow(
                      color: Color.fromARGB(255, 102, 102, 102), blurRadius: 4)
                ]),
              ),
            ],
          ),
        )),
      ]),
    ]));
  }
}
