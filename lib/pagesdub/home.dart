import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_trial/pages/main_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'arab.dart';
import 'europe.dart';
import 'shop.dart';
import 'signIn.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images = [
    "https://i.pinimg.com/564x/19/05/04/1905044aa3af13f92a42f5ad32490cb6.jpg",
    "https://i.pinimg.com/564x/fa/b0/64/fab064b996ff81117ad87fe094bcd93a.jpg",
    "https://i.pinimg.com/564x/6f/1a/be/6f1abe99027a76e0ee3b9cb370d61c8b.jpg",
    "https://i.pinimg.com/564x/60/e1/36/60e13645d8e6c5dcfd5fa05a67dc5a0d.jpg",
    "https://i.pinimg.com/564x/59/bf/36/59bf3626fd94826793713a17787bef1b.jpg",
    "https://i.pinimg.com/736x/cb/06/63/cb066337100bf682f528e7031e1ed81a.jpg",
    "https://i.pinimg.com/564x/61/49/0d/61490d0ce5cbc53e53b7b35ed4ca78e8.jpg",
    "https://i.pinimg.com/564x/ab/37/84/ab37845ab50561c6226722df5a6b1339.jpg",
    "https://i.pinimg.com/564x/b3/9c/c5/b39cc5c6a293aaeb3e7fe97f4fcb90f4.jpg",
    "https://i.pinimg.com/564x/f6/a3/bc/f6a3bc57593a1a10af949efb9583aea9.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 18,
              ),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/travel1.png",
                    width: 170,
                    height: 170,
                  ),
                  SizedBox(width: 15),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Trasple",
                          style: GoogleFonts.dancingScript(
                              color: Color.fromARGB(255, 8, 136, 132),
                              fontSize: 70,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Shop()));
                              },
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor:
                                    Color.fromARGB(255, 8, 136, 132),
                                child: Icon(
                                  Icons.shop,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            GestureDetector(
                              onTap: () async {
                                await FirebaseAuth.instance.signOut();

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MainPage()));
                              },
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor:
                                    Color.fromARGB(255, 8, 136, 132),
                                child: Icon(
                                  Icons.logout,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 210,
              ),
              child: Text(
                "Discover",
                style: GoogleFonts.lora(
                    color: Color.fromARGB(255, 9, 79, 76),
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 70,
              ),
              child: Text(
                "Explore the best places in the world!",
                style: GoogleFonts.lora(color: Colors.grey[700], fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(left: 20.0),
              width: double.maxFinite,
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (_, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 10.0),
                      height: 180,
                      width: 135,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage("" + images[index]),
                            fit: BoxFit.cover,
                          )),
                    );
                  }),
            ),
            SizedBox(height: 5),
            Column(
              children: [
                Text(
                  "Explore More",
                  style: GoogleFonts.ptSerif(
                      fontSize: 35,
                      color: Color.fromARGB(255, 90, 59, 7),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Places!",
                  style: GoogleFonts.ptSerif(
                      fontSize: 35,
                      color: Color.fromARGB(255, 90, 59, 7),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 37,
                    bottom: 38,
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Europe()));
                        },
                        child: CircleAvatar(
                          radius: 40,
                          child: Icon(
                            Icons.place,
                            color: Colors.black,
                            size: 35,
                          ),
                          backgroundColor: Color.fromARGB(255, 253, 210, 224),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Europe",
                        style: GoogleFonts.ptSerif(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 106, 9, 71)),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MiddleEast()));
                      },
                      child: CircleAvatar(
                        radius: 40,
                        child: Icon(
                          Icons.place,
                          color: Colors.black,
                          size: 35,
                        ),
                        backgroundColor: Color.fromARGB(255, 164, 228, 240),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Middle",
                      style: GoogleFonts.ptSerif(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 10, 60, 118)),
                    ),
                    Text(
                      "East",
                      style: GoogleFonts.ptSerif(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 10, 60, 118)),
                    )
                  ],
                ),
                SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 38,
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) => CupertinoAlertDialog(
                                    title: Text(
                                      "Sorry...",
                                      style: GoogleFonts.notoSans(
                                          color:
                                              Color.fromARGB(255, 8, 104, 34),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    ),
                                    content: Text(
                                      "This service isn't available right now...",
                                      style: GoogleFonts.notoSans(
                                          color:
                                              Color.fromARGB(255, 8, 104, 34),
                                          fontSize: 18),
                                    ),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            "Ok",
                                            style: GoogleFonts.notoSans(
                                                color: Color.fromARGB(
                                                    255, 8, 104, 34),
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ],
                                  ));
                        },
                        child: CircleAvatar(
                          radius: 40,
                          child: Icon(
                            Icons.place,
                            color: Colors.black,
                            size: 35,
                          ),
                          backgroundColor: Color.fromARGB(255, 197, 255, 185),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Africa",
                        style: GoogleFonts.ptSerif(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 8, 104, 34)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
