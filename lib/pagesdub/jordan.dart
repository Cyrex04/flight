import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Petra extends StatefulWidget {
  const Petra({super.key});

  @override
  State<Petra> createState() => _PetraState();
}

class _PetraState extends State<Petra> {
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
                  image: NetworkImage("https://i.pinimg.com/564x/ed/fc/da/edfcda121a4de459c0bd33823959c326.jpg"),
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
                  top: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Jordan,Petra" , style: GoogleFonts.playfairDisplay(
                          fontSize: 40, color: Color.fromARGB(255, 10, 60, 118), fontWeight: FontWeight.bold
                        ),),
                
                        SizedBox(width: 30),
                
                        Icon(Icons.star , color: Colors.amber, size: 38,),
                        Text("4.8" , style: TextStyle(fontSize: 25),)
                      ],
                    ),

                    SizedBox(height: 28),

                     Container(
                       child: Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(
                              right: 20,
                             ),
                             child: Text("Petra is one of the oldest cities in the world. Archaeologists believe the Nabateans established the city in 312 BC. It was the capital city of Nabateans, an ancient Arab tribe who inhabited northern Arabia and the southern Levant and arrived in Jordan around the 6th century BC.",
                             style: GoogleFonts.playfairDisplay(
                              fontSize: 21, color: Color.fromARGB(255, 10, 60, 118)
                             ),
                             ),
                           ),

                           SizedBox(height: 30),

                           Padding(
                             padding: const EdgeInsets.only(
                              left: 20,
                             ),
                             child: Row(
                              children: [
                                Text("1 week cost:" , style: GoogleFonts.merriweather(
                                  fontSize: 30, color: Color.fromARGB(255, 10, 60, 118), fontWeight: FontWeight.bold
                                ),),
                                SizedBox(width: 10),
                                Icon(Icons.attach_money_rounded , size: 40, color: Colors.redAccent,),
                                Text("600" , style: GoogleFonts.merriweather(
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