import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:piland/screens/constants/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            color: Color(0xff081e5a),
            height: Constants.screenHeight * 0.08,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/menu.png",
                    height: Constants.screenHeight * 0.05,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Home",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/einstaien.png",
                    height: Constants.screenHeight * 0.05,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Constants.screenWidth * 0.05,
                    vertical: Constants.screenHeight * 0.01),
                child: Container(
                  height: Constants.screenHeight * 0.22,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff081e5a),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: Constants.screenHeight * 0.01,
                            horizontal: Constants.screenWidth * 0.05),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 31,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 28,
                                backgroundImage:
                                    AssetImage("assets/images/einstaien.png"),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hamza Omrani",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Levels :",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "85/100",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  LinearPercentIndicator(
                                    width: Constants.screenWidth * 0.5,
                                    lineHeight: 8.0,
                                    barRadius: Radius.circular(20),
                                    percent: 0.8,
                                    progressColor: Colors.blue,
                                    backgroundColor: Colors.white,
                                  ),
                                  Text("Ranking : 1",
                                      style: TextStyle(color: Colors.white))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1.5,
                        color: Colors.white,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: Constants.screenWidth * 0.06),
                            child: Image.asset(
                              "assets/images/controller.png",
                              height: Constants.screenHeight * 0.05,
                            ),
                          ),
                          Text(
                            "TRAINING",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              child: Container(
                                height: Constants.screenHeight * 0.05,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: Constants.screenHeight * 0.01,
                                      horizontal: Constants.screenWidth * 0.05),
                                  child: Text(
                                    "PLAY NOW",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            crossAxisCount: 2,
                            childAspectRatio: 1.5),
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: BuildGridItem(
                            label: "TRAINING",
                            imagePath: "assets/images/controller.png"),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: BuildGridItem(
                            label: "LEAGUE",
                            imagePath: "assets/images/challenge.png"),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: BuildGridItem(
                            label: "TOURNAMENT",
                            imagePath: "assets/images/award.png"),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: BuildGridItem(
                            label: "STATICS",
                            imagePath: "assets/images/stat.png"),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: BuildGridItem(
                            label: "LEADERBOARD",
                            imagePath: "assets/images/podium.png"),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: BuildGridItem(
                            label: "LOGOUT",
                            imagePath: "assets/images/controller.png"),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    ));
  }
}

class BuildGridItem extends StatelessWidget {
  final String imagePath;
  final String label;
  const BuildGridItem({
    Key? key,
    required this.imagePath,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
      height: 100,
      width: 100,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "$label",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: Color(0xff081e5a)),
                  ),
                  Visibility(
                    visible: !(label == "LOGOUT"),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "LEVEL",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(20)),
                              height: Constants.screenHeight * 0.005,
                              width: Constants.screenWidth * 0.1,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(20)),
                              height: Constants.screenHeight * 0.005,
                              width: Constants.screenWidth * 0.05,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: -40,
            bottom: -40,
            child: CircleAvatar(
              radius: 75,
              backgroundColor: Color(0xff081e5a).withOpacity(0.4),
              child: CircleAvatar(
                radius: 65,
                backgroundColor: Color(0xff081e5a).withOpacity(0.6),
                child: CircleAvatar(
                  backgroundColor: Color(0xff081e5a),
                  radius: 55,
                  child: Image.asset(
                    "$imagePath",
                    height: Constants.screenHeight * 0.15,
                    width: Constants.screenWidth * 0.15,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
