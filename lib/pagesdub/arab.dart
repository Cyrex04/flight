import 'package:flutter/material.dart';
import 'package:flutter_trial/pagesdub/home.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dubai.dart';
import 'jordan.dart';
import 'pyramids.dart';
import 'qatar.dart';
import 'shop.dart';
import 'signIn.dart';

class MiddleEast extends StatefulWidget {
  const MiddleEast({super.key});

  @override
  State<MiddleEast> createState() => _MiddleEastState();
}

class _MiddleEastState extends State<MiddleEast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Middle East",
          style: GoogleFonts.ptSerif(fontSize: 27),
        ),
        backgroundColor: Color.fromARGB(255, 10, 60, 118),
      ),
      drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 164, 228, 240),
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Trasple",
                      style: GoogleFonts.dancingScript(
                          color: Color.fromARGB(255, 10, 60, 118),
                          fontSize: 65,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.flight_takeoff,
                      color: Color.fromARGB(255, 10, 60, 118),
                      size: 50,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 10, 60, 118),
                  size: 30,
                ),
                title: Text(
                  "Home Page",
                  style: GoogleFonts.ptSerif(
                      fontSize: 27, color: Color.fromARGB(255, 10, 60, 118)),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(
                  Icons.shop,
                  color: Color.fromARGB(255, 10, 60, 118),
                  size: 30,
                ),
                title: Text(
                  "Shop",
                  style: GoogleFonts.ptSerif(
                      fontSize: 27, color: Color.fromARGB(255, 10, 60, 118)),
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Shop()));
                },
              ),
              SizedBox(height: 150),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Color.fromARGB(255, 10, 60, 118),
                  size: 30,
                ),
                title: Text(
                  "Logout",
                  style: GoogleFonts.ptSerif(
                      fontSize: 27, color: Color.fromARGB(255, 10, 60, 118)),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignIN()));
                },
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: Column(
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Petra()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 320,
                      height: 200,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://i.pinimg.com/564x/ed/fc/da/edfcda121a4de459c0bd33823959c326.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                        ),
                        child: Text(
                          "Jordan,Petra",
                          style: GoogleFonts.robotoMono(
                              fontSize: 20,
                              color: Color.fromARGB(255, 10, 60, 118),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 70),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 28,
                      ),
                      Text(
                        "4.8",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dubai()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 320,
                      height: 200,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://i.pinimg.com/564x/b5/b9/50/b5b9508f565c91e781714445beca26e4.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                        ),
                        child: Text(
                          "UAE,Dubai",
                          style: GoogleFonts.robotoMono(
                              fontSize: 20,
                              color: Color.fromARGB(255, 10, 60, 118),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 110),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 28,
                      ),
                      Text(
                        "4.7",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Pyramids()));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 320,
                      height: 200,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://i.pinimg.com/564x/61/f7/44/61f7443cff5224ffa638a6d733c0308c.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 50,
                        ),
                        child: Text(
                          "Egypt,Pyramids",
                          style: GoogleFonts.robotoMono(
                              fontSize: 20,
                              color: Color.fromARGB(255, 10, 60, 118),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 50),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 28,
                      ),
                      Text(
                        "4.8",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Doha()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        width: 320,
                        height: 200,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://i.pinimg.com/564x/f5/8a/0b/f58a0b4a195d5a9557d0438d4ec85e18.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 50,
                          ),
                          child: Text(
                            "Qatar,Doha",
                            style: GoogleFonts.robotoMono(
                                fontSize: 20,
                                color: Color.fromARGB(255, 10, 60, 118),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(width: 98),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 28,
                        ),
                        Text(
                          "4.9",
                          style: TextStyle(fontSize: 18),
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
    );
  }
}
