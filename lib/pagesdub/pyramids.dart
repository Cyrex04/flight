import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pyramids extends StatefulWidget {
  const Pyramids({super.key});

  @override
  State<Pyramids> createState() => _PyramidsState();
}

class _PyramidsState extends State<Pyramids> {
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
                  image: NetworkImage("https://i.pinimg.com/564x/61/f7/44/61f7443cff5224ffa638a6d733c0308c.jpg"),
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
                  top: 25,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Egypt,Pyramids" , style: GoogleFonts.playfairDisplay(
                          fontSize: 32, color: Color.fromARGB(255, 10, 60, 118), fontWeight: FontWeight.bold
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
                             child: Text("The Pyramids Have Shrunk Over the Years, The Great Pyramid of Khufu, which originally stood at 481 feet high, now reaches only 455 feet. Similarly, the Pyramid of Khafre, once towering at 471 feet, now stands at 448 feet. Lastly, the Pyramid of Menkaure, which was once at 218 feet, now measures 203 feet.",
                             style: GoogleFonts.playfairDisplay(
                              fontSize: 20, color: Color.fromARGB(255, 10, 60, 118)
                             ),
                             ),
                           ),

                           SizedBox(height: 25),

                           Padding(
                             padding: const EdgeInsets.only(
                              left: 22,
                             ),
                             child: Row(
                              children: [
                                Text("1 week cost:" , style: GoogleFonts.merriweather(
                                  fontSize: 30, color: Color.fromARGB(255, 10, 60, 118), fontWeight: FontWeight.bold
                                ),),
                                SizedBox(width: 10),
                                Icon(Icons.attach_money_rounded , size: 40, color: Colors.redAccent,),
                                Text("400" , style: GoogleFonts.merriweather(
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