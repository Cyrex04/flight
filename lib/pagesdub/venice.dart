import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Venice extends StatefulWidget {
  const Venice({super.key});

  @override
  State<Venice> createState() => _VeniceState();
}

class _VeniceState extends State<Venice> {
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
                  image: NetworkImage("https://i.pinimg.com/564x/93/a5/10/93a510b23fcb515a278e003f62aa8f48.jpg"),
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
                        Text("Italy,Venice" , style: GoogleFonts.playfairDisplay(
                          fontSize: 40, color: Color.fromARGB(255, 106, 9, 71), fontWeight: FontWeight.bold
                        ),),
                
                        SizedBox(width: 50),
                
                        Icon(Icons.star , color: Colors.amber, size: 38,),
                        Text("4.8" , style: TextStyle(fontSize: 25),)
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
                             child: Text("Venice is one of our favorite spots in Italy. Why? Venice is romantic, historic, and gorgeous. It is also small and compact, perfect to be explored with just a few days time. The list of sites to visit in Venice is long. So long, in fact, that it would take days to see all of them. Most people have just a few days in this magical city.",
                             style: GoogleFonts.playfairDisplay(
                              fontSize: 20, color: Color.fromARGB(255, 106, 9, 71)
                             ),
                             ),
                           ),

                           SizedBox(height: 30),

                           Padding(
                             padding: const EdgeInsets.only(
                              left: 25,
                             ),
                             child: Row(
                              children: [
                                Text("1 week cost:" , style: GoogleFonts.merriweather(
                                  fontSize: 30, color: Color.fromARGB(255, 106, 9, 71), fontWeight: FontWeight.bold
                                ),),
                                SizedBox(width: 10),
                                Icon(Icons.attach_money_rounded , size: 40, color: Colors.redAccent,),
                                Text("800" , style: GoogleFonts.merriweather(
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