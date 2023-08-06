import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Doha extends StatefulWidget {
  const Doha({super.key});

  @override
  State<Doha> createState() => _DohaState();
}

class _DohaState extends State<Doha> {
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
                  image: NetworkImage("https://i.pinimg.com/564x/f5/8a/0b/f58a0b4a195d5a9557d0438d4ec85e18.jpg"),
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
                  top: 32,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Qatar,Doha" , style: GoogleFonts.playfairDisplay(
                          fontSize: 40, color: Color.fromARGB(255, 10, 60, 118), fontWeight: FontWeight.bold
                        ),),
                
                        SizedBox(width: 50),
                
                        Icon(Icons.star , color: Colors.amber, size: 38,),
                        Text("4.9" , style: TextStyle(fontSize: 25),)
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
                             child: Text("Doha is the capital city and main financial hub of Qatar. Located on the Persian Gulf coast in the east of the country, north of Al Wakrah and south of Al Khur, it is home to most of the country's population.",
                             style: GoogleFonts.playfairDisplay(
                              fontSize: 23, color: Color.fromARGB(255, 10, 60, 118)
                             ),
                             ),
                           ),

                           SizedBox(height: 35),

                           Padding(
                             padding: const EdgeInsets.only(
                              left: 15,
                             ),
                             child: Row(
                              children: [
                                Text("1 week cost:" , style: GoogleFonts.merriweather(
                                  fontSize: 30, color: Color.fromARGB(255, 10, 60, 118), fontWeight: FontWeight.bold
                                ),),
                                SizedBox(width: 10),
                                Icon(Icons.attach_money_rounded , size: 40, color: Colors.redAccent,),
                                Text("1,200" , style: GoogleFonts.merriweather(
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