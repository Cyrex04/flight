import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Paris extends StatefulWidget {
  const Paris({super.key});

  @override
  State<Paris> createState() => _ParisState();
}

class _ParisState extends State<Paris> {
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
                  image: NetworkImage("https://i.pinimg.com/564x/a7/69/95/a769957e898e48f3bafcad3d5debc5a0.jpg"),
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
                        Text("France,Paris" , style: GoogleFonts.playfairDisplay(
                          fontSize: 40, color: Color.fromARGB(255, 106, 9, 71), fontWeight: FontWeight.bold
                        ),),
                
                        SizedBox(width: 40),
                
                        Icon(Icons.star , color: Colors.amber, size: 38,),
                        Text("4.6" , style: TextStyle(fontSize: 25),)
                      ],
                    ),

                    SizedBox(height: 25),

                     Container(
                       child: Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(
                              right: 20,
                             ),
                             child: Text("Eiffel Tower is one of the most iconic and instantly recognizable buildings across the globe. The wrought-iron lattice tower is 324 meters tall, making it the tallest structure in all of Paris. Constructed between 1887 and 1889 for the World Fair, the Eiffel Tower has become synonymous with the city of Paris and no trip to the City of Lights is complete without stopping by the Eiffel Tower.",
                             style: GoogleFonts.playfairDisplay(
                              fontSize: 19, color: Color.fromARGB(255, 106, 9, 71)
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