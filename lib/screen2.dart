import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myproject/startscreen.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  var firstnameEditingController = TextEditingController();
  var contactEditingController = TextEditingController();
  var firstnameFocusNode = FocusNode();
  var contactFocusNode = FocusNode();
  checkValidation() {
    if (firstnameEditingController.text.toString().isEmpty) {
      Fluttertoast.showToast(msg: "Enter name");
    } else if (contactEditingController.text.toString().isEmpty) {
      Fluttertoast.showToast(msg: "Enter password", webPosition: "left");
    } else {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const StartScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ADD company"),
          actions: const [Icon(Icons.more_vert)],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "First Name",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 300,
              ),
              child: TextField(
                  controller: firstnameEditingController,
                  focusNode: firstnameFocusNode,
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 40, 1, 112), width: 2)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(136, 136, 0, 0), width: 3),
                    ),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 0, 0, 0), width: 4)),
                  ),
                  onSubmitted: (value) {
                    if (firstnameEditingController.text.toString().isEmpty) {
                      Fluttertoast.showToast(msg: "Enter Name");
                      //   firstnameEditingController.requestFocus();
                    } else {
                      contactFocusNode.requestFocus();
                    }
                  }),
            ),
            const Text("Conatact No."),
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                focusNode: firstnameFocusNode,
                // enabled: false,
                controller: contactEditingController,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 40, 1, 112), width: 2)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(136, 136, 0, 0), width: 3),
                  ),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0), width: 4)),
                ),
                onSubmitted: (value) {
                  if (contactEditingController.text.toString().isEmpty) {
                    contactFocusNode.requestFocus();
                  } else {
                    checkValidation();
                  }
                },
              ),
            ),
            const Text(
              "Email",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 300,
              ),
              child: TextField(
                controller: firstnameEditingController,
                focusNode: firstnameFocusNode,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 40, 1, 112), width: 2)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(136, 136, 0, 0), width: 3),
                  ),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0), width: 4)),
                ),
              ),
            ),
            const Text(
              "Address",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 300,
              ),
              child: TextField(
                //  controller: ,
                // focusNode: nameFocusNode,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 40, 1, 112), width: 2)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(136, 136, 0, 0), width: 3),
                  ),
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0), width: 4)),
                ),
              ),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return const Color.fromARGB(255, 50, 50, 50);
                    }
                    return const Color.fromARGB(255, 115, 161, 199);
                  },
                )),
                onPressed: () {
                  checkValidation();
                  // print(nameEditingController.text);
                },
                child: const Text("Get Values"))
          ],
        ));
  }
}
