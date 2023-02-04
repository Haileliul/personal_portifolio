import 'dart:developer';

import "package:flutter/material.dart";
import 'package:personal_portifolio/Tabs/Home.dart';

import 'Tabs/About.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MAIN(),
    );
  }
}

class MAIN extends StatelessWidget {
  const MAIN({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Icon icon = Icon(
      Icons.copyright,
      size: size.width * 0.01.toDouble(),
    );
    Icon like = Icon(
      Icons.heart_broken_rounded,
      size: size.width * 0.01.toDouble(),
    );
    int a = 10;

    return Scaffold(
      body: SafeArea(
          child: Container(
        width: size.width,
        height: size.height,
        child: DefaultTabController(
          length: 6,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey[400],
                  child: Column(children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        width: double.infinity,
                        // color: Colors.green,
                        child: SingleChildScrollView(
                          child: Column(children: [
                            CircleAvatar(
                              // backgroundColor: Colors.red,
                              radius: size.width * 0.05.toDouble(),
                              backgroundImage:
                                  AssetImage('Assets/Images/p1.png'),
                            ),
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Text(
                              "HAILELIUL  BAYE",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: size.width * 0.02.toDouble(),
                              ),
                            ),
                            Text(
                              "MEARN Stack & Flutter app ",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: size.width * 0.01.toDouble(),
                              ),
                            ),
                            Text("Developer in Ethiopia"),
                          ]),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        color: Colors.yellow,
                        child: SingleChildScrollView(
                          child: TabBar(
                              unselectedLabelColor: Colors.black54,
                              labelColor: Colors.blue,
                              indicatorColor: Colors.blue,
                              tabs: <Widget>[
                                Tab(icon: Icon(Icons.home_outlined)),
                                Tab(icon: Icon(Icons.group_outlined)),
                                Tab(
                                    icon:
                                        Icon(Icons.messenger_outline_outlined)),
                                Tab(
                                    icon:
                                        Icon(Icons.notifications_on_outlined)),
                                Tab(icon: Icon(Icons.ondemand_video_outlined)),
                                Tab(icon: Icon(Icons.shop_outlined)),
                              ]),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    icon,
                                    Text("Copyright",
                                        style: TextStyle(
                                          fontSize:
                                              size.width * 0.01.toDouble(),
                                        )),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    icon,
                                    Text("All rights resserved |",
                                        style: TextStyle(
                                          fontSize:
                                              size.width * 0.01.toDouble(),
                                        )),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("This Portifolio is made with ",
                                        style: TextStyle(
                                          fontSize:
                                              size.width * 0.01.toDouble(),
                                        )),
                                  ],
                                ),
                                Row(
                                  children: [
                                    like,
                                    Text("by Haileliule",
                                        style: TextStyle(
                                          fontSize:
                                              size.width * 0.01.toDouble(),
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.white,
                  child: TabBarView(children: <Widget>[
                    Home(),
                    Aboutme(),
                    one(),
                    one(),
                    one(),
                    one(),
                  ]),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class one extends StatelessWidget {
  const one({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text("one")),
      ),
    );
  }
}
