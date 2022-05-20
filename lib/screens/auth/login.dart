import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:piland/screens/auth/create_account1.dart';
import 'package:piland/screens/home/home_page.dart';

import '../constants/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xff081e5a),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: Constants.screenHeight * 0.05,
              ),
              Image.asset(
                "assets/images/logo.png",
                height: Constants.screenHeight * 0.2,
              ),
              SizedBox(
                height: Constants.screenHeight * 0.07,
              ),
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    height: Constants.screenHeight * 0.5,
                    width: Constants.screenWidth * 0.8,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: Constants.screenHeight * 0.06,
                          horizontal: Constants.screenWidth * 0.1),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            TextFormField(
                              decoration:
                                  InputDecoration(hintText: "User name"),
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(hintText: "Password"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                alignment: Alignment.centerRight,
                                width: double.infinity,
                                child: Text(
                                  "Forgot password?",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.indigo),
                                ),
                              ),
                            ),
                            Container(
                                width: double.infinity,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.indigo,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    onPressed: () {
                                      Get.to(HomePage());
                                    },
                                    child: Text("Login"))),
                            Container(
                              alignment: Alignment.bottomCenter,
                              height: Constants.screenHeight * 0.16,
                              width: double.infinity,
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(CreateAccount1());
                                },
                                child: Text(
                                  "Create Account",
                                  style: TextStyle(
                                    color: Colors.indigo,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: -50,
                      child: Image.asset(
                        "assets/images/einstaien.png",
                        height: Constants.screenHeight * 0.12,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
