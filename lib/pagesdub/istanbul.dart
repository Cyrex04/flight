import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Istanbul extends StatefulWidget {
  const Istanbul({super.key});

  @override
  State<Istanbul> createState() => _IstanbulState();
}

class _IstanbulState extends State<Istanbul> {
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
                  image: NetworkImage("https://i.pinimg.com/564x/85/31/41/85314185b118885f8f43c642636756a6.jpg"),
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
                        Text("Turkey,Istanbul" , style: GoogleFonts.playfairDisplay(
                          fontSize: 35, color: Color.fromARGB(255, 106, 9, 71), fontWeight: FontWeight.bold
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
                             child: Text("The Blue Mosque was built between 1609 and 1616, by the architect Mehmet Ağa, instructed by Sultan Ahmed I. It was designed as an imperial show of strength to complement the imposing Hagia Sophia Mosque, which faces it across Sultanahmet Square.",
                             style: GoogleFonts.playfairDisplay(
                              fontSize: 20, color: Color.fromARGB(255, 106, 9, 71)
                             ),
                             ),
                           ),

                           SizedBox(height: 40),

                           Padding(
                             padding: const EdgeInsets.only(
                              left: 23,
                             ),
                             child: Row(
                              children: [
                                Text("1 week cost:" , style: GoogleFonts.merriweather(
                                  fontSize: 30, color: Color.fromARGB(255, 106, 9, 71), fontWeight: FontWeight.bold
                                ),),
                                SizedBox(width: 10),
                                Icon(Icons.attach_money_rounded , size: 40, color: Colors.redAccent,),
                                Text("665" , style: GoogleFonts.merriweather(
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