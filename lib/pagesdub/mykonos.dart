import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mykonos extends StatefulWidget {
  const Mykonos({super.key});

  @override
  State<Mykonos> createState() => _MykonosState();
}

class _MykonosState extends State<Mykonos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
       width: double.maxFinite,
       height: double.maxFinite,

       child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://lp-cms-production.imgix.net/2021-08/shutterstockRF_1541944991.jpg?auto=format&w=1440&h=810&fit=crop&q=75"),
                  fit: BoxFit.cover,
                  opacity: 0.7,
                ),
              ),
          )),

          Positioned(
            top:320,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 470,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )
              ),

              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 30,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Greece,Mykonos" , style: GoogleFonts.playfairDisplay(
                          fontSize: 32, color: Color.fromARGB(255, 106, 9, 71), fontWeight: FontWeight.bold
                        ),),
                
                        SizedBox(width: 23),
                
                        Icon(Icons.star , color: Colors.amber, size: 38,),
                        Text("4.5" , style: TextStyle(fontSize: 25),)
                      ],
                    ),

                    SizedBox(height: 30),

                     Container(
                       child: Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(
                              right: 20,
                             ),
                             child: Text("An island of beauty and magic, Mykonos has been known as the island of the winds, and it’s located in the heart of the Cyclades group. Its fame has spread across the world, as a cosmopolitan and luxurious holiday destination.",
                             style: GoogleFonts.playfairDisplay(
                              fontSize: 21, color: Color.fromARGB(255, 106, 9, 71)
                             ),
                             ),
                           ),

                           SizedBox(height: 40),

                           Padding(
                             padding: const EdgeInsets.only(
                              left: 11,
                             ),
                             child: Row(
                              children: [
                                Text("1 week cost:" , style: GoogleFonts.merriweather(
                                  fontSize: 30, color: Color.fromARGB(255, 106, 9, 71), fontWeight: FontWeight.bold
                                ),),
                                SizedBox(width: 10),
                                Icon(Icons.attach_money_rounded , size: 40, color: Colors.redAccent,),
                                Text("2,500" , style: GoogleFonts.merriweather(
                                  fontSize: 35, color: Colors.redAccent, fontWeight: FontWeight.bold
                                ),)
                              ],
                             ),
                           )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
       ),
      ),
    );
  }
}