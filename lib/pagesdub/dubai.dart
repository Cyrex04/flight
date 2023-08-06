import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dubai extends StatefulWidget {
  const Dubai({super.key});

  @override
  State<Dubai> createState() => _DubaiState();
}

class _DubaiState extends State<Dubai> {
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
                  image: NetworkImage("https://i.pinimg.com/564x/b5/b9/50/b5b9508f565c91e781714445beca26e4.jpg"),
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
                        Text("UAE,Dubai" , style: GoogleFonts.playfairDisplay(
                          fontSize: 40, color: Color.fromARGB(255, 10, 60, 118), fontWeight: FontWeight.bold
                        ),),
                
                        SizedBox(width: 50),
                
                        Icon(Icons.star , color: Colors.amber, size: 38,),
                        Text("4.7" , style: TextStyle(fontSize: 25),)
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
                             child: Text("Dubai is a city and emirate in the United Arab Emirates known for luxury shopping, ultramodern architecture and a lively nightlife scene. Burj Khalifa, an 830m-tall tower, dominates the skyscraper-filled skyline. At its foot lies Dubai Fountain, with jets and lights choreographed to music.",
                             style: GoogleFonts.playfairDisplay(
                              fontSize: 20, color: Color.fromARGB(255, 10, 60, 118)
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