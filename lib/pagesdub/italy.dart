import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Italy extends StatefulWidget {
  const Italy({super.key});

  @override
  State<Italy> createState() => _ItalyState();
}

class _ItalyState extends State<Italy> {
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
                  image: NetworkImage("https://i.pinimg.com/564x/4b/a0/cf/4ba0cf85431d5ba93091b0b4578bc36a.jpg"),
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
                        Text("Italy,Colosseum" , style: GoogleFonts.playfairDisplay(
                          fontSize: 32, color: Color.fromARGB(255, 106, 9, 71), fontWeight: FontWeight.bold
                        ),),
                
                        SizedBox(width: 30),
                
                        Icon(Icons.star , color: Colors.amber, size: 38,),
                        Text("4.0" , style: TextStyle(fontSize: 25),)
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
                             child: Text("The Colosseum is an elliptical amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world, despite its age.",
                             style: GoogleFonts.playfairDisplay(
                              fontSize: 22, color: Color.fromARGB(255, 106, 9, 71)
                             ),
                             ),
                           ),

                           SizedBox(height: 30),

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
                                Text("1,000" , style: GoogleFonts.merriweather(
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