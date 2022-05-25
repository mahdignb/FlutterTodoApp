import 'package:flutter/material.dart';
import 'package:todo/Screens/widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(24),
            margin: EdgeInsets.only(
              bottom: 32.0,
            ),
            color: Color(0xFF6F6F6),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                    TaskCardWidget(
                      title: "Hello",
                      description: "MyFirstTask",
                    ),
                    TaskCardWidget(
                      title: "Hello",
                      description: "MySecondTask",
                    ),
                    TaskCardWidget(
                      title: "Hello",
                      description: "MyThirdTask",
                    ),
                  ],
                ),
                Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(
                          0xFF7349FE,
                        )),
                    child: Image(
                      image: AssetImage("assets/images/add_icon.png"),
                      width: 60.0,
                      height: 60.0,
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
