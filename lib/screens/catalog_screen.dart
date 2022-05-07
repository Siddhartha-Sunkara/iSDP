import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../NavBar.dart';
import '../reusable_widgets/catalog_products.dart';
import 'cart_screen.dart';

class CatalogScreen extends StatelessWidget{
  const CatalogScreen({Key? key}) :super (key :key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title:  Text('Menu' , style: GoogleFonts.montserrat(textStyle: Theme.of(context).textTheme.headline4, fontSize: 20, color: Colors.red.shade900,fontStyle: FontStyle.normal, fontWeight:FontWeight.w500 )),
        elevation: 0,
        backgroundColor: Colors.white,

        actions: <Widget>[

          IconButton(
          icon: FaIcon(FontAwesomeIcons.circleChevronRight, color: Colors.black),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return CartScreen();
              }
              ));
            },
          )
        ],),

      body: SafeArea(
        child: Column(
          children:[
            CatalogProducts(),

          // ElevatedButton(
          // onPressed:() => Get.to(()=> CartScreen()),
          // child: const Text('Go to Cart'),)
    ]
        )

      )
    );
  }
}

