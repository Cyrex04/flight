import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mailer/mailer.dart';

import '../pages/main_page.dart';
import 'cart.dart';
import 'home.dart';
import 'signIn.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  void sendMassage(item) {
    FirebaseFirestore.instance.collection("cart items").add(
      {
        "name": item,
      },
    );
  }

  int price = 0;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Trasple Shop",
              style: GoogleFonts.ptSerif(fontSize: 27),
            ),
            SizedBox(width: 10),
            Icon(Icons.shop),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 42, 157, 144),
      ),
      drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 181, 255, 246),
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Trasple",
                      style: GoogleFonts.dancingScript(
                          color: Color.fromARGB(255, 7, 67, 60),
                          fontSize: 65,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.flight_takeoff,
                      color: Color.fromARGB(255, 7, 67, 60),
                      size: 50,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 7, 67, 60),
                  size: 30,
                ),
                title: Text(
                  "Home Page",
                  style: GoogleFonts.ptSerif(
                      fontSize: 27, color: Color.fromARGB(255, 7, 67, 60)),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(
                  Icons.shopping_cart,
                  color: Color.fromARGB(255, 7, 67, 60),
                  size: 30,
                ),
                title: Text(
                  "Cart Page",
                  style: GoogleFonts.ptSerif(
                      fontSize: 27, color: Color.fromARGB(255, 7, 67, 60)),
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Cart()));
                },
              ),
              SizedBox(height: 150),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Color.fromARGB(255, 7, 67, 60),
                  size: 30,
                ),
                title: Text(
                  "Logout",
                  style: GoogleFonts.ptSerif(
                      fontSize: 27, color: Color.fromARGB(255, 7, 67, 60)),
                ),
                onTap: () async {
                  await FirebaseAuth.instance.signOut();

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainPage()));
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
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cart()));
                          },
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                width: 150,
                                height: 150,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://i.pinimg.com/564x/6d/b7/af/6db7af500b4d215c65f87650471b228e.jpg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Packing Cube",
                                style: GoogleFonts.lato(
                                    color: Color.fromARGB(255, 7, 67, 60),
                                    fontSize: 24),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.attach_money_rounded,
                                    size: 30,
                                    color: Colors.redAccent,
                                  ),
                                  Text(
                                    "21",
                                    style: GoogleFonts.merriweather(
                                        fontSize: 30,
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 20),
                                  GestureDetector(
                                    child: Icon(
                                      Icons.add_shopping_cart,
                                      color: Color.fromARGB(255, 16, 165, 128),
                                    ),
                                    onTap: () {
                                      price += 21;
                                      sendMassage("Packing Cube");
                                      showDialog(
                                          context: context,
                                          builder: (context) =>
                                              CupertinoAlertDialog(
                                                title: Text(
                                                  "This item was added to cart successfully!",
                                                  style: GoogleFonts.notoSans(
                                                      color: Color.fromARGB(
                                                          255, 7, 67, 60),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                actions: [
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text(
                                                        "Ok",
                                                        style: GoogleFonts
                                                            .notoSans(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        7,
                                                                        67,
                                                                        60),
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                      )),
                                                ],
                                              ));
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 8),
                        GestureDetector(
                          // onTap: () {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => SignIN()));
                          // },
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                width: 150,
                                height: 150,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://i.pinimg.com/564x/98/90/61/9890616ac9611c0c18caf5f418e506ba.jpg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "First Aid Kit",
                                style: GoogleFonts.lato(
                                    color: Color.fromARGB(255, 7, 67, 60),
                                    fontSize: 24),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.attach_money_rounded,
                                    size: 30,
                                    color: Colors.redAccent,
                                  ),
                                  Text(
                                    "30",
                                    style: GoogleFonts.merriweather(
                                        fontSize: 30,
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 20),
                                  GestureDetector(
                                    child: Icon(
                                      Icons.add_shopping_cart,
                                      color: Color.fromARGB(255, 16, 165, 128),
                                    ),
                                    onTap: () {
                                      price += 30;
                                      sendMassage("First Aid Kit");
                                      showDialog(
                                          context: context,
                                          builder: (context) =>
                                              CupertinoAlertDialog(
                                                title: Text(
                                                  "This item was added to cart successfully!",
                                                  style: GoogleFonts.notoSans(
                                                      color: Color.fromARGB(
                                                          255, 7, 67, 60),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                actions: [
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text(
                                                        "Ok",
                                                        style: GoogleFonts
                                                            .notoSans(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        7,
                                                                        67,
                                                                        60),
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                      )),
                                                ],
                                              ));
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        GestureDetector(
                          // onTap: () {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => SignIN()));
                          // },
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                width: 150,
                                height: 150,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://i.pinimg.com/564x/9b/c2/c1/9bc2c150055a1906a2577cf947eddf50.jpg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Sleep Mask",
                                style: GoogleFonts.lato(
                                    color: Color.fromARGB(255, 7, 67, 60),
                                    fontSize: 24),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.attach_money_rounded,
                                    size: 30,
                                    color: Colors.redAccent,
                                  ),
                                  Text(
                                    "24",
                                    style: GoogleFonts.merriweather(
                                        fontSize: 30,
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 20),
                                  GestureDetector(
                                    child: Icon(
                                      Icons.add_shopping_cart,
                                      color: Color.fromARGB(255, 16, 165, 128),
                                    ),
                                    onTap: () {
                                      price += 24;
                                      sendMassage("Sleep mask");
                                      showDialog(
                                          context: context,
                                          builder: (context) =>
                                              CupertinoAlertDialog(
                                                title: Text(
                                                  "This item was added to cart successfully!",
                                                  style: GoogleFonts.notoSans(
                                                      color: Color.fromARGB(
                                                          255, 7, 67, 60),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                actions: [
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text(
                                                        "Ok",
                                                        style: GoogleFonts
                                                            .notoSans(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        7,
                                                                        67,
                                                                        60),
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                      )),
                                                ],
                                              ));
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 8),
                        GestureDetector(
                          // onTap: () {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => SignIN()));
                          // },
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                width: 150,
                                height: 150,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://i.pinimg.com/564x/1e/69/0f/1e690f797c81d389878354f8ba3f58c5.jpg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Travel Headphone",
                                style: GoogleFonts.lato(
                                    color: Color.fromARGB(255, 7, 67, 60),
                                    fontSize: 20),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.attach_money_rounded,
                                    size: 30,
                                    color: Colors.redAccent,
                                  ),
                                  Text(
                                    "30",
                                    style: GoogleFonts.merriweather(
                                        fontSize: 30,
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 20),
                                  GestureDetector(
                                    child: Icon(
                                      Icons.add_shopping_cart,
                                      color: Color.fromARGB(255, 16, 165, 128),
                                    ),
                                    onTap: () {
                                      price += 30;
                                      sendMassage("Travel headphone");
                                      showDialog(
                                          context: context,
                                          builder: (context) =>
                                              CupertinoAlertDialog(
                                                title: Text(
                                                  "This item was added to cart successfully!",
                                                  style: GoogleFonts.notoSans(
                                                      color: Color.fromARGB(
                                                          255, 7, 67, 60),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                actions: [
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text(
                                                        "Ok",
                                                        style: GoogleFonts
                                                            .notoSans(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        7,
                                                                        67,
                                                                        60),
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                      )),
                                                ],
                                              ));
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        GestureDetector(
                          // onTap: () {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => SignIN()));
                          // },
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                width: 150,
                                height: 150,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://i.pinimg.com/564x/a2/62/c9/a262c92b0a99375348a3da9dc28b893a.jpg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Travel Pillow",
                                style: GoogleFonts.lato(
                                    color: Color.fromARGB(255, 7, 67, 60),
                                    fontSize: 24),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.attach_money_rounded,
                                    size: 30,
                                    color: Colors.redAccent,
                                  ),
                                  Text(
                                    "25",
                                    style: GoogleFonts.merriweather(
                                        fontSize: 30,
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 20),
                                  GestureDetector(
                                    child: Icon(
                                      Icons.add_shopping_cart,
                                      color: Color.fromARGB(255, 16, 165, 128),
                                    ),
                                    onTap: () {
                                      price += 25;
                                      sendMassage("Travle pillow");
                                      showDialog(
                                          context: context,
                                          builder: (context) =>
                                              CupertinoAlertDialog(
                                                title: Text(
                                                  "This item was added to cart successfully!",
                                                  style: GoogleFonts.notoSans(
                                                      color: Color.fromARGB(
                                                          255, 7, 67, 60),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                actions: [
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text(
                                                        "Ok",
                                                        style: GoogleFonts
                                                            .notoSans(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        7,
                                                                        67,
                                                                        60),
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                      )),
                                                ],
                                              ));
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 8),
                        GestureDetector(
                          // onTap: () {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => SignIN()));
                          // },
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                width: 150,
                                height: 150,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://i.pinimg.com/564x/d5/19/03/d51903618578953ad28cc324ca6baa7b.jpg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Travel Backpack",
                                style: GoogleFonts.lato(
                                    color: Color.fromARGB(255, 7, 67, 60),
                                    fontSize: 24),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.attach_money_rounded,
                                    size: 30,
                                    color: Colors.redAccent,
                                  ),
                                  Text(
                                    "60",
                                    style: GoogleFonts.merriweather(
                                        fontSize: 30,
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 20),
                                  GestureDetector(
                                    child: Icon(
                                      Icons.add_shopping_cart,
                                      color: Color.fromARGB(255, 16, 165, 128),
                                    ),
                                    onTap: () {
                                      price += 60;
                                      sendMassage("Travel PackBack");
                                      showDialog(
                                          context: context,
                                          builder: (context) =>
                                              CupertinoAlertDialog(
                                                title: Text(
                                                  "This item was added to cart successfully!",
                                                  style: GoogleFonts.notoSans(
                                                      color: Color.fromARGB(
                                                          255, 7, 67, 60),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                actions: [
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text(
                                                        "Ok",
                                                        style: GoogleFonts
                                                            .notoSans(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        7,
                                                                        67,
                                                                        60),
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                      )),
                                                ],
                                              ));
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          // onTap: () {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => SignIN()));
                          // },
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                width: 150,
                                height: 150,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://i.pinimg.com/564x/c3/43/86/c34386a0c43c10642efb44b2126b014d.jpg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Travel Camera",
                                style: GoogleFonts.lato(
                                    color: Color.fromARGB(255, 7, 67, 60),
                                    fontSize: 24),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.attach_money_rounded,
                                    size: 30,
                                    color: Colors.redAccent,
                                  ),
                                  Text(
                                    "70",
                                    style: GoogleFonts.merriweather(
                                        fontSize: 30,
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 20),
                                  GestureDetector(
                                    child: Icon(
                                      Icons.add_shopping_cart,
                                      color: Color.fromARGB(255, 16, 165, 128),
                                    ),
                                    onTap: () {
                                      price += 70;
                                      sendMassage("Travel Camera");
                                      showDialog(
                                          context: context,
                                          builder: (context) =>
                                              CupertinoAlertDialog(
                                                title: Text(
                                                  "This item was added to cart successfully!",
                                                  style: GoogleFonts.notoSans(
                                                      color: Color.fromARGB(
                                                          255, 7, 67, 60),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                actions: [
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text(
                                                        "Ok",
                                                        style: GoogleFonts
                                                            .notoSans(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        7,
                                                                        67,
                                                                        60),
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                      )),
                                                ],
                                              ));
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 8),
                        GestureDetector(
                          // onTap: () {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => SignIN()));
                          // },
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                width: 150,
                                height: 150,
                                padding: EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://i.pinimg.com/564x/51/ea/1a/51ea1a1a3c51e76d413ea372a70ac9d9.jpg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Earplug",
                                style: GoogleFonts.lato(
                                    color: Color.fromARGB(255, 7, 67, 60),
                                    fontSize: 24),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.attach_money_rounded,
                                    size: 30,
                                    color: Colors.redAccent,
                                  ),
                                  Text(
                                    "3",
                                    style: GoogleFonts.merriweather(
                                        fontSize: 30,
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 20),
                                  GestureDetector(
                                    child: Icon(
                                      Icons.add_shopping_cart,
                                      color: Color.fromARGB(255, 16, 165, 128),
                                    ),
                                    onTap: () {
                                      price += 3;
                                      sendMassage("Ear Plug");
                                      showDialog(
                                          context: context,
                                          builder: (context) =>
                                              CupertinoAlertDialog(
                                                title: Text(
                                                  "This item was added to cart successfully!",
                                                  style: GoogleFonts.notoSans(
                                                      color: Color.fromARGB(
                                                          255, 7, 67, 60),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                actions: [
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text(
                                                        "Ok",
                                                        style: GoogleFonts
                                                            .notoSans(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        7,
                                                                        67,
                                                                        60),
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                      )),
                                                ],
                                              ));
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 20,
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
                            // onTap: () {
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //           builder: (context) => SignIN()));
                            // },
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: 150,
                                  height: 150,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://i.pinimg.com/564x/d2/90/52/d29052ed464e222dcc330febb5aea05f.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Travel Bag",
                                  style: GoogleFonts.lato(
                                      color: Color.fromARGB(255, 7, 67, 60),
                                      fontSize: 24),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.attach_money_rounded,
                                      size: 30,
                                      color: Colors.redAccent,
                                    ),
                                    Text(
                                      "25",
                                      style: GoogleFonts.merriweather(
                                          fontSize: 30,
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 20),
                                    GestureDetector(
                                      child: Icon(
                                        Icons.add_shopping_cart,
                                        color:
                                            Color.fromARGB(255, 16, 165, 128),
                                      ),
                                      onTap: () {
                                        price += 25;
                                        sendMassage("Travel Bag");
                                        showDialog(
                                            context: context,
                                            builder: (context) =>
                                                CupertinoAlertDialog(
                                                  title: Text(
                                                    "This item was added to cart successfully!",
                                                    style: GoogleFonts.notoSans(
                                                        color: Color.fromARGB(
                                                            255, 7, 67, 60),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                  ),
                                                  actions: [
                                                    TextButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Text(
                                                          "Ok",
                                                          style: GoogleFonts
                                                              .notoSans(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          7,
                                                                          67,
                                                                          60),
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                        )),
                                                  ],
                                                ));
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 8),
                          GestureDetector(
                            // onTap: () {
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //           builder: (context) => SignIN()));
                            // },
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: 150,
                                  height: 150,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://i.pinimg.com/564x/d8/3d/f4/d83df49b709b4b3d1324e7ef79a32aa6.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Travel Bags Set",
                                  style: GoogleFonts.lato(
                                      color: Color.fromARGB(255, 7, 67, 60),
                                      fontSize: 24),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.attach_money_rounded,
                                      size: 30,
                                      color: Colors.redAccent,
                                    ),
                                    Text(
                                      "82",
                                      style: GoogleFonts.merriweather(
                                          fontSize: 30,
                                          color: Colors.redAccent,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 20),
                                    GestureDetector(
                                      child: Icon(
                                        Icons.add_shopping_cart,
                                        color:
                                            Color.fromARGB(255, 16, 165, 128),
                                      ),
                                      onTap: () {
                                        price += 82;
                                        sendMassage("Travel Bags Set");
                                        showDialog(
                                            context: context,
                                            builder: (context) =>
                                                CupertinoAlertDialog(
                                                  title: Text(
                                                    "This item was added to cart successfully!",
                                                    style: GoogleFonts.notoSans(
                                                        color: Color.fromARGB(
                                                            255, 7, 67, 60),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                  ),
                                                  actions: [
                                                    TextButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Text(
                                                          "Ok",
                                                          style: GoogleFonts
                                                              .notoSans(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          7,
                                                                          67,
                                                                          60),
                                                                  fontSize: 18,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                        )),
                                                  ],
                                                ));
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
