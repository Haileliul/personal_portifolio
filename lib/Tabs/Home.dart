import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("Assets/Images/b1.png"), fit: BoxFit.cover),
        ),
        child: Row(children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 50),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "I am \nA Software Engineer",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.035.toDouble(),
                      ),
                    ),
                    Text("Expaerianced in Flutter and MEARN stack"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: size.width * 0.12,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: NeverScrollableScrollPhysics(),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Icon(Icons.download),
                                SizedBox(
                                  width: 2,
                                ),
                                Text("RESUME"),
                              ],
                            ),
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(20),
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 237, 125, 243)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.bottomCenter,
                // color: Colors.grey[100],
                child: Image(
                  image: AssetImage("Assets/Images/p3.png"),
                  width: size.width * 0.5,
                  height: size.height * 0.75,
                  fit: BoxFit.fill,
                ),
              )),
        ]),
      ),
    );
  }
}
