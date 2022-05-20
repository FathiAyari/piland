import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:piland/screens/home/home_page.dart';

import '../constants/constants.dart';

class CreateAccount2 extends StatefulWidget {
  const CreateAccount2({Key? key}) : super(key: key);

  @override
  _CreateAccount2State createState() => _CreateAccount2State();
}

class _CreateAccount2State extends State<CreateAccount2> {
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
                          vertical: Constants.screenHeight * 0.05),
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
                    Image.asset(
                      "assets/images/camera.png",
                      height: Constants.screenHeight * 0.1,
                    ),
                    Text(
                      "Profile picture",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey),
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
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration:
                                  InputDecoration(hintText: "User name"),
                            ),
                          ),
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.orange,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.mic_rounded,
                                color: Colors.grey,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {
                              Get.back();
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.indigo,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            label: Text("Back"),
                            icon: Icon(Icons.arrow_back),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Get.to(HomePage());
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.indigo,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            child: Text("Sign up"),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: double.infinity,
                      height: Constants.screenHeight * 0.1,
                      child: Text(
                        "2/2",
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
