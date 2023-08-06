import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Greece extends StatefulWidget {
  const Greece({super.key});

  @override
  State<Greece> createState() => _GreeceState();
}

class _GreeceState extends State<Greece> {
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
                  image: NetworkImage("https://i.pinimg.com/564x/f4/cc/de/f4ccde8339f9a5d993a9970e60c75f49.jpg"),
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
                        Text("Greece,Santorini" , style: GoogleFonts.playfairDisplay(
                          fontSize: 32, color: Color.fromARGB(255, 106, 9, 71), fontWeight: FontWeight.bold
                        ),),
                
                        SizedBox(width: 20),
                
                        Icon(Icons.star , color: Colors.amber, size: 38,),
                        Text("4.7" , style: TextStyle(fontSize: 25),)
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
                             child: Text("The everlasting beauty of Santorini Greece attracts thousands of visitors every year. Hence, it is no wonder that the island is one of the top tourist destinations in the world. Its wild volcanic landscape, rugged cliffs, wild nature, and beautiful shores, combined with its rich history and traditions, make the island the gem of Greece.",
                             style: GoogleFonts.playfairDisplay(
                              fontSize: 20, color: Color.fromARGB(255, 106, 9, 71)
                             ),
                             ),
                           ),

                           SizedBox(height: 30),

                           Padding(
                             padding: const EdgeInsets.only(
                              left: 13,
                             ),
                             child: Row(
                              children: [
                                Text("1 week cost:" , style: GoogleFonts.merriweather(
                                  fontSize: 30, color: Color.fromARGB(255, 106, 9, 71), fontWeight: FontWeight.bold
                                ),),
                                SizedBox(width: 10),
                                Icon(Icons.attach_money_rounded , size: 40, color: Colors.redAccent,),
                                Text("2,288" , style: GoogleFonts.merriweather(
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