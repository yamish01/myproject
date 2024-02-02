import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myproject/login.dart';
import 'package:myproject/signupage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var emailEditingController = TextEditingController();
  var emailFocusnode = FocusNode();

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
                                "hi!",
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
                                  child: Column(children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15),
                                      child: TextField(
                                        controller: emailEditingController,
                                        focusNode: emailFocusnode,
                                        style: const TextStyle(
                                          fontSize: 20,
                                        ),
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 13),
                                          filled: true,
                                          hintText: "Email",
                                          labelStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 10, 3, 139)),
                                          fillColor: Color.fromARGB(
                                              151, 255, 255, 255),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromARGB(
                                                      84, 255, 255, 255))),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color.fromARGB(
                                                  49, 255, 255, 255),
                                            ),
                                          ),
                                        ),
                                        onSubmitted: (value) {
                                          if (emailEditingController
                                              .text.isEmpty) {
                                            Fluttertoast.showToast(
                                                msg: "Enter Email");
                                            emailFocusnode.requestFocus();
                                          } else if (emailEditingController
                                              .text.isNotEmpty) {
                                            emailFocusnode.unfocus();
                                            setState(() {});
                                          }
                                        },
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Container(
                                          height: 50,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.green),
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const LogIn()));
                                            },
                                            child: const Text(
                                              "Continue",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ),
                                        )),
                                    const Center(
                                        child: Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Text(
                                        "or",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w100,
                                            color: Colors.grey),
                                      ),
                                    )),
                                    Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        height: 50,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color.fromARGB(
                                            255,
                                            255,
                                            255,
                                            255,
                                          ),
                                        ),
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.facebook),
                                            Center(
                                              child: Text(
                                                "Connect with Facebook",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w100),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        height: 50,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color.fromARGB(
                                            255,
                                            255,
                                            255,
                                            255,
                                          ),
                                        ),
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.apple),
                                            Center(
                                              child: Text(
                                                "Connect with Apple",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w100),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Container(
                                          height: 50,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: const Color.fromARGB(
                                              255,
                                              255,
                                              255,
                                              255,
                                            ),
                                          ),
                                          child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.all(3),
                                                child: ImageIcon(
                                                  AssetImage(
                                                    "images/search.png",
                                                  ),
                                                  size: 18,
                                                ),
                                              ),
                                              Center(
                                                child: Text(
                                                  "Connect with Google",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w100),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Don't have an account?",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w100,
                                              color: Colors.white),
                                        ),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const SignuPage()));
                                            },
                                            child: const Center(
                                              child: Text(
                                                "Sign up",
                                                style: TextStyle(
                                                  color: Colors.green,
                                                ),
                                              ),
                                            ))
                                      ],
                                    ),
                                  ]),
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
