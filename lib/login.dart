import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _FirstPageState();
}

class _FirstPageState extends State<LogIn> {
  var passwordEditingController = TextEditingController();

  var passwordFocusnode = FocusNode();
  var isPasswordEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Center(
          child: IconButton(
            highlightColor: Color.fromARGB(80, 65, 64, 64),
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Color.fromARGB(62, 0, 0, 0),
                image: DecorationImage(
                    image: AssetImage(
                      "images/back1.jpg",
                    ),
                    alignment: Alignment.bottomRight,
                    fit: BoxFit.cover,
                    colorFilter:
                        ColorFilter.mode(Colors.black45, BlendMode.darken)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                "Log in",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color.fromARGB(253, 54, 53, 53)
                                        .withOpacity(.7),
                                  ),
                                  width: 410,
                                  height: 410,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                                color: Colors.grey[300]),
                                          ),
                                          Column(children: [
                                            Container(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 5, left: 15),
                                                child: TextField(
                                                  textAlign: TextAlign.start,
                                                  style: const TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white),
                                                  decoration:
                                                      const InputDecoration(
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 13),
                                                    fillColor: Color.fromARGB(
                                                        0, 255, 255, 255),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: Color
                                                                    .fromARGB(
                                                                        0,
                                                                        255,
                                                                        255,
                                                                        255))),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Color.fromARGB(
                                                            0, 255, 255, 255),
                                                      ),
                                                    ),
                                                  ),
                                                  onSubmitted: (value) {},
                                                ),
                                              ),
                                            ),
                                            Padding(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                child: Container(
                                                  height: 50,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      color: Colors.green),
                                                  child: TextButton(
                                                    onPressed: () {},
                                                    child: const Text(
                                                      "Agree and Continue",
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                )),
                                          ]),
                                        ]),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]),
              )),
        ],
      ),
    );
  }
}
