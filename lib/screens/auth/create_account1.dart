import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:piland/screens/auth/create_account2.dart';
import 'package:piland/screens/constants/constants.dart';

class CreateAccount1 extends StatefulWidget {
  const CreateAccount1({Key? key}) : super(key: key);

  @override
  _CreateAccount1State createState() => _CreateAccount1State();
}

class _CreateAccount1State extends State<CreateAccount1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            width: double.infinity,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: Constants.screenWidth * 0.1),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: Constants.screenHeight * 0.07),
                      child: Image.asset(
                        "assets/images/logo.png",
                        height: Constants.screenHeight * 0.1,
                      ),
                    ),
                    Text(
                      "Create an account",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.indigo),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(hintText: "User name"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(hintText: "User name"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(hintText: "User name"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(hintText: "User name"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(hintText: "User name"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(hintText: "User name"),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: Constants.screenWidth * 0.55),
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(CreateAccount2());
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.indigo,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Row(
                            children: [
                              Text("Next"),
                              Icon(Icons.arrow_forward_sharp)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: double.infinity,
                      height: Constants.screenHeight * 0.13,
                      child: Text(
                        "1/2",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
