import 'package:flutter/material.dart';

void main() => runApp(Aboutme());

class Aboutme extends StatelessWidget {
  const Aboutme({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 137, 123, 138),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("Assets/Images/b1.png"), fit: BoxFit.cover),
        ),
        child: Row(children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // color: Colors.amber,
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage('Assets/Images/p4.png'),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              // color: Color.fromARGB(255, 202, 147, 205),
              child: Padding(
                padding: EdgeInsets.all(size.width * 0.05.toDouble()),
                child: Card(
                  // elevation: 500,
                  shape: RoundedRectangleBorder(
                    //<-- SEE HERE
                    side: BorderSide(
                      color: Color.fromARGB(255, 157, 70, 250),
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),

                  shadowColor: Color.fromARGB(0, 80, 103, 130),
                  // color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(38.0),
                    child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Hi ~",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.03,
                                    color: Color.fromARGB(255, 157, 70, 250),
                                  ),
                                ),
                                Icon(
                                  Icons.face_retouching_natural,
                                  color: Colors.amber,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Text(
                                "My Name is Haileliul Baye. \nI am currently a student of Software enginnering at Bahirdar University.I have basic to advanced Skills on Soft Skills , I can speak three languages \n-Amharic \n-Arebic \n-English  \nI also have some characters that will help me to glow some of them are  \n-Honest \n-Respectfull \n-verry Passtionate to Technology \n-Eger to Learn new Things \n-Sociable \n- Hard Woking ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width * 0.015,
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
