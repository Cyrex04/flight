import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'greece.dart';
import 'home.dart';
import 'istanbul.dart';
import 'italy.dart';
import 'mykonos.dart';
import 'norway.dart';
import 'paris.dart';
import 'shop.dart';
import 'signIn.dart';
import 'venice.dart';

class Europe extends StatefulWidget {
  const Europe({super.key});

  @override
  State<Europe> createState() => _EuropeState();
}

class _EuropeState extends State<Europe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Europe",
          style: GoogleFonts.ptSerif(fontSize: 27),
        ),
        backgroundColor: Color.fromARGB(255, 106, 9, 71),
      ),
      drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 253, 210, 224),
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Trasple",
                      style: GoogleFonts.dancingScript(
                          color: Color.fromARGB(255, 106, 9, 71),
                          fontSize: 65,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.flight_takeoff,
                      color: Color.fromARGB(255, 106, 9, 71),
                      size: 50,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 106, 9, 71),
                  size: 30,
                ),
                title: Text(
                  "Home Page",
                  style: GoogleFonts.ptSerif(
                      fontSize: 27, color: Color.fromARGB(255, 106, 9, 71)),
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
                  color: Color.fromARGB(255, 106, 9, 71),
                  size: 30,
                ),
                title: Text(
                  "Shop",
                  style: GoogleFonts.ptSerif(
                      fontSize: 27, color: Color.fromARGB(255, 106, 9, 71)),
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
                  color: Color.fromARGB(255, 106, 9, 71),
                  size: 30,
                ),
                title: Text(
                  "Logout",
                  style: GoogleFonts.ptSerif(
                      fontSize: 27, color: Color.fromARGB(255, 106, 9, 71)),
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
                          MaterialPageRoute(builder: (context) => Venice()));
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
                                "https://i.pinimg.com/564x/93/a5/10/93a510b23fcb515a278e003f62aa8f48.jpg"),
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
                          "Italy,Venice",
                          style: GoogleFonts.robotoMono(
                              fontSize: 20,
                              color: Color.fromARGB(255, 106, 9, 71),
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
                          MaterialPageRoute(builder: (context) => Paris()));
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
                                "https://i.pinimg.com/564x/a7/69/95/a769957e898e48f3bafcad3d5debc5a0.jpg"),
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
                          "Paris,Eiffel Tower",
                          style: GoogleFonts.robotoMono(
                              fontSize: 18,
                              color: Color.fromARGB(255, 106, 9, 71),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 23),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 28,
                      ),
                      Text(
                        "4.6",
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
                          MaterialPageRoute(builder: (context) => Greece()));
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
                                "https://i.pinimg.com/564x/f4/cc/de/f4ccde8339f9a5d993a9970e60c75f49.jpg"),
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
                          "Greece,Santorini",
                          style: GoogleFonts.robotoMono(
                              fontSize: 19,
                              color: Color.fromARGB(255, 106, 9, 71),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 35),
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
                          MaterialPageRoute(builder: (context) => Istanbul()));
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
                                "https://i.pinimg.com/564x/85/31/41/85314185b118885f8f43c642636756a6.jpg"),
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
                          "Istanbul,Blue Mosque",
                          style: GoogleFonts.robotoMono(
                              fontSize: 17,
                              color: Color.fromARGB(255, 106, 9, 71),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 20),
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
                          MaterialPageRoute(builder: (context) => Norway()));
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
                                "https://i.pinimg.com/564x/34/aa/2d/34aa2dc12ea4cdbcd3805ae021a2f2c5.jpg"),
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
                          "Norway,Hamnoy",
                          style: GoogleFonts.robotoMono(
                              fontSize: 20,
                              color: Color.fromARGB(255, 106, 9, 71),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 60),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 28,
                      ),
                      Text(
                        "4.5",
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
                          MaterialPageRoute(builder: (context) => Mykonos()));
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
                                "https://lp-cms-production.imgix.net/2021-08/shutterstockRF_1541944991.jpg?auto=format&w=1440&h=810&fit=crop&q=75"),
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
                          "Greece,Mykonos",
                          style: GoogleFonts.robotoMono(
                              fontSize: 20,
                              color: Color.fromARGB(255, 106, 9, 71),
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
                        "4.5",
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
                            MaterialPageRoute(builder: (context) => Italy()));
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
                                  "https://i.pinimg.com/564x/4b/a0/cf/4ba0cf85431d5ba93091b0b4578bc36a.jpg"),
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
                            "Italy,Colosseum",
                            style: GoogleFonts.robotoMono(
                                fontSize: 20,
                                color: Color.fromARGB(255, 106, 9, 71),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(width: 40),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 28,
                        ),
                        Text(
                          "4.0",
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
