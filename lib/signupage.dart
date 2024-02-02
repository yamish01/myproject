import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myproject/firstpage.dart';
import 'package:myproject/login.dart';

class SignuPage extends StatefulWidget {
  const SignuPage({super.key});

  @override
  State<SignuPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<SignuPage> {
  var emailEditingController = TextEditingController();
  var passwordEditingController = TextEditingController();
  var emailFocusnode = FocusNode();
  var passwordFocusnode = FocusNode();
  var isPasswordEnabled = false;
  final textFieldFocusNode = FocusNode();
  bool _Obscured = false;

  void _toggleObscured() {
    _Obscured = !_Obscured;
    setState(() {
      () {};
    });
  }

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
                                "Sign up",
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
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Text(
                                              '''Looks like you don't have an account.\nLet's create a new account for''',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          bottom: 5, left: 15),
                                                  child: TextField(
                                                    textAlign: TextAlign.start,
                                                    controller:
                                                        emailEditingController,
                                                    focusNode: emailFocusnode,
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
                                                    onSubmitted: (value) {
                                                      if (emailEditingController
                                                          .text.isEmpty) {
                                                        Fluttertoast.showToast(
                                                            msg: "Enter Email");
                                                        emailFocusnode
                                                            .requestFocus();
                                                      } else if (emailEditingController
                                                          .text.isNotEmpty) {
                                                        emailFocusnode
                                                            .unfocus();
                                                        setState(() {});
                                                      }
                                                    },
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Container(
                                                  child: TextField(
                                                    controller:
                                                        emailEditingController,
                                                    focusNode: emailFocusnode,
                                                    style: const TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0)),
                                                    decoration:
                                                        const InputDecoration(
                                                      hintText: "name",
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 13),
                                                      filled: true,
                                                      fillColor: Color.fromARGB(
                                                          162, 255, 255, 255),
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
                                                    onSubmitted: (value) {
                                                      if (emailEditingController
                                                          .text.isEmpty) {
                                                        Fluttertoast.showToast(
                                                            msg: "Enter Email");
                                                        emailFocusnode
                                                            .requestFocus();
                                                      } else if (emailEditingController
                                                          .text.isNotEmpty) {
                                                        emailFocusnode
                                                            .unfocus();
                                                        setState(() {
                                                          isPasswordEnabled =
                                                              true;
                                                        });
                                                      } else {
                                                        passwordFocusnode
                                                            .requestFocus();
                                                      }
                                                    },
                                                    onEditingComplete: () {
                                                      emailFocusnode.unfocus();
                                                      passwordFocusnode
                                                          .requestFocus();
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: TextField(
                                                  controller:
                                                      passwordEditingController,
                                                  focusNode: passwordFocusnode,
                                                  obscureText: _Obscured,
                                                  style: const TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color.fromARGB(
                                                          255, 0, 0, 0)),
                                                  decoration: InputDecoration(
                                                      hintText: "Password",
                                                      filled: true,
                                                      fillColor: Colors.white,
                                                      contentPadding:
                                                          const EdgeInsets.symmetric(
                                                              vertical: 13),
                                                      focusedBorder:
                                                          const OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          0,
                                                                          255,
                                                                          255,
                                                                          255))),
                                                      enabledBorder:
                                                          const OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: Color.fromARGB(
                                                              0, 255, 255, 255),
                                                        ),
                                                      ),
                                                      suffixIcon:
                                                          GestureDetector(
                                                        onTap: _toggleObscured,
                                                        child: Icon(
                                                          _Obscured
                                                              ? Icons
                                                                  .visibility_rounded
                                                              : Icons
                                                                  .visibility_off_rounded,
                                                        ),
                                                      )),
                                                  onSubmitted: (value) {
                                                    if (passwordEditingController
                                                        .text.isEmpty) {
                                                      Fluttertoast.showToast(
                                                          msg:
                                                              "Enter Password");
                                                      passwordFocusnode
                                                          .requestFocus();
                                                    }
                                                    setState(() {});
                                                  })),
                                          Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Container(
                                              child: const Text(
                                                "By selecting Agree and Continue below, I Agree to Terms of Service and Privacy Policy",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w100,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                              padding: const EdgeInsets.all(5),
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
                                                  onPressed: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                const FirstPage()));
                                                  },
                                                  child: const Text(
                                                    "Agree and Continue",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              )),
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
