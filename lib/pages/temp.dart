import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pagesdub/create.dart';
import '../pagesdub/signIn.dart';

class welcoming extends StatelessWidget {
  welcoming({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(32),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/564x/99/a4/70/99a470b35eb69a3b784a906afcad1dcd.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Welcome To",
                  style:
                      GoogleFonts.robotoSlab(color: Colors.white, fontSize: 50),
                ),
                Text(
                  "Trasple",
                  style: GoogleFonts.dancingScript(
                      color: Colors.white,
                      fontSize: 80,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 150),
                Text(
                  "Explore and discover new places",
                  style: GoogleFonts.rubik(
                    color: Color.fromARGB(255, 250, 252, 251),
                    fontSize: 32.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Browse a lot of interesting tourist offers and choose something for yourself, The world is waiting!",
                  style:
                      GoogleFonts.notoSans(color: Colors.white, fontSize: 22),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIN()));
                  },
                  child: Text("Sign in",
                      style: GoogleFonts.ubuntu(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(vertical: 14, horizontal: 120),
                    backgroundColor: Color.fromARGB(255, 5, 78, 80),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreateAccount()));
                  },
                  child: Text(
                    "Create an account",
                    style: GoogleFonts.ubuntu(
                        fontSize: 18,
                        color: Colors.white,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
