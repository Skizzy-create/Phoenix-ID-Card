import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: AppCard(),
));

class AppCard extends StatefulWidget {
  const AppCard({Key? key}) : super(key: key);

  @override
  State<AppCard> createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {

  int likes = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: const Text("PHOENIX ID CARD"), //Title for the app bar
        centerTitle: true,
        backgroundColor: Colors.grey[900], // background colour
        elevation: 0.0, // shadows of the app bar
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0), // spacing
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center( // the code uses the column arrangement
                child: CircleAvatar(
                  backgroundImage: AssetImage('Assets/1.jpg'),
                  // profile picture
                  radius: 50.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  // Button for likes
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() { // set state is used to reload the app every time the button is pressed
                        likes = likes + 5748;
                      });
                    },
                    icon: const Icon(
                      Icons.favorite, // the type of icon
                    ),
                    label: const Text("+"), // give the button a definition
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "$likes", // the mechanism to display likes on the screen
                    style: TextStyle(
                      color: Colors.blueAccent[200],
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              const Divider( // unknown
                height: 30.0,
                color: Colors.grey,
              ),
              const SizedBox(width: 5.0,),
              const Text(
                "NAME",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0,),
              Text(
                "KARTIK ASLIA",
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  // letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30.0),
              Row(
                children: const <Widget>[
                  Icon(
                    Icons.perm_identity,
                    color: Colors.grey,
                    size: 20.0,
                  ),
                  SizedBox(width: 10.0,),
                  Text(
                    "PROFILE",
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10.0,),
              Text(
                """I am a hardworking, ethical and punctual individual, always ready to learn and polish my skills. With great leadership and communication skills. And I am always ready to work and grow with the team. My interest lies in the computer science domain and I have been tinkering with technology both old and new since my childhood.""",
                style: TextStyle(
                  color: Colors.grey[200],
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(height: 30.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(width: 10.0,),
                  Text(
                      "asliakartik@gmail.com",
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      )
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
              Row(children:
              const [
                CircleAvatar(
                  backgroundImage: AssetImage('Assets/graduate.png'),
                  radius: 10.0,
                  backgroundColor: Colors.grey,
                ),
                SizedBox(width: 10,),
                Text(
                  "EDUCATION",
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              ),
              const SizedBox(height: 10.0,),
              Text(
                """B.E CSE(HONS) – Big Data Analytics| Chandigarh University
    2022 – PRESENT
    \nStudent and Working as student-researcher in A.I M.L & Data analytics with the aeronautics department @ KCCRSST-CU\n
    Class 12 | Kendriya Vidyalaya No -1
    2019 – 2020
    Appointed as the school Student Council Head, Vice Discipline Head & House Vice Captain """,
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  //letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(height: 30.0,),
              Row(
                  children: const <Widget>[Icon(
                    Icons.cases_rounded,
                    color: Colors.grey,
                  ),
                    SizedBox(width: 10,),
                    Text(
                      "EXPERIENCE",
                      style: TextStyle(
                        color: Colors.grey,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0
                      ),
                    )
                  ]
              ),
              Text(
                """Student-Researcher | Chandigarh University @ KCCRSST-CU
                
2022 – PRESENT 
Team leader of the Team Phoenix, working on ballistic projectiles and their origin tracking. 

Intern | Kishvi Studio®

2016 – 2017 
I was the part of the static graphics and abstract arts, was recognized for my hard work and creativity and team skills """,
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}