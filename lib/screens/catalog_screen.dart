import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../reusable_widgets/catalog_products.dart';
import 'cart_screen.dart';

class CatalogScreen extends StatelessWidget{
  const CatalogScreen({Key? key}) :super (key :key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text('Menu' , style: GoogleFonts.montserrat(textStyle: Theme.of(context).textTheme.headline4, fontSize: 20, color: Colors.red.shade900,fontStyle: FontStyle.normal, fontWeight:FontWeight.w500 )),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person, color: Colors.black),
            onPressed: () {},
          )
        ],),

      body: SafeArea(
        child: Column(
          children:[
            CatalogProducts(),

          ElevatedButton(
          onPressed:() => Get.to(()=> CartScreen()),
          child: const Text('Go to Cart'),)
    ]
        )

      )
    );
  }
}

