import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 75,
              ),
              child: Text(
                "Cart",
                style: GoogleFonts.ptSerif(fontSize: 38),
              ),
            ),
            SizedBox(width: 10),
            Icon(
              Icons.shopping_cart,
              size: 30,
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 42, 157, 144),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 100,
          left: 20,
        ),
        child: Column(
          children: [
            Image.asset(
              "assets/images/data.png",
              width: 300,
              height: 300,
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(
                right: 10,
                left: 10,
              ),
              child: Text(
                "We are working to get your ",
                style: GoogleFonts.playfairDisplay(
                    fontSize: 28, color: Color.fromARGB(255, 8, 87, 78)),
              ),
            ),
            Text(
              "items here...",
              style: GoogleFonts.playfairDisplay(
                  fontSize: 28, color: Color.fromARGB(255, 8, 87, 78)),
            ),
            SizedBox(height: 30),
            Text("Soon they will be added.",
                style: GoogleFonts.playfairDisplay(
                    fontSize: 22, color: Color.fromARGB(255, 4, 47, 42))),
          ],
        ),
      ),
    );
  }
}
