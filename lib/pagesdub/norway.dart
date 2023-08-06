import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Norway extends StatefulWidget {
  const Norway({super.key});

  @override
  State<Norway> createState() => _NorwayState();
}

class _NorwayState extends State<Norway> {
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
                  image: NetworkImage("https://i.pinimg.com/564x/34/aa/2d/34aa2dc12ea4cdbcd3805ae021a2f2c5.jpg"),
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
                        Text("Norway,Hamnoy" , style: GoogleFonts.playfairDisplay(
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
                             child: Text("Hamnøy is a small but unbelievably beautiful fishing village in the Lofoten archipelago. It’s considered one of the most beautiful places of all in Lofoten.  However, the village is a great place to visit not only for its photogenic qualities, but also for its outdoor activities. Going fishing and seeing the northern lights or the midnight sun are just a few of things you can do there.",
                             style: GoogleFonts.playfairDisplay(
                              fontSize: 19, color: Color.fromARGB(255, 106, 9, 71)
                             ),
                             ),
                           ),

                           SizedBox(height: 25),

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
                                Text("2,800" , style: GoogleFonts.merriweather(
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