import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(BenimUyg());
}

class BenimUyg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage("assets/images/kahve.jpg"),
                  radius: 70,
                ),
                Text("Flutter kahvacısı",
                  style:TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontFamily: 'GreatVibes',

                  ) ,
                ),
                Text(
                  "BİR FİNCAN UZAĞINIZDA",
                  style: GoogleFonts.poiretOne(
                    fontSize: 16,
                    color:Colors.white ,
                  ),
                ) ,
                 Divider(height: 20,color: Colors.brown[900],endIndent: 20.0,indent: 20.0,thickness: 1.3,),
                Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 45.0,
                  ),
                  color: Colors.brown[800],
                  child: ListTile(
                    leading:
                    Icon(Icons.email,
                      color: Colors.white,
                    ),
                    title:Text("      flutter_kahvecisi@hotmail.com",
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        color: Colors.white70,

                      ),
                    ) ,
                  ),
                ),
                SizedBox(
                 height: 10,
                 width: 400,
                 ),
                Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 45.0,
                  ),
                  color: Colors.brown[800],
                 child: ListTile(
                   leading: Icon(Icons.phone,
                     color: Colors.white,
                   ),
                   title: Text("     xxxx-xxxx-xxxx-xxxx",
                     style: GoogleFonts.lato(
                       fontSize: 16,
                       color: Colors.white70,
                     ),
                   ),
                 ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
