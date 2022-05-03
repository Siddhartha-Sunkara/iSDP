import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/reusable_widgets/cart_products.dart';
import 'package:project2/reusable_widgets/cart_total.dart';

import '../reusable_widgets/cart_products.dart';

class CartScreen extends StatelessWidget{
  const CartScreen({Key? key }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text('Your Cart ' , style: GoogleFonts.montserrat(textStyle: Theme.of(context).textTheme.headline4, fontSize: 20, color: Colors.red.shade900,fontStyle: FontStyle.normal, fontWeight:FontWeight.w500 )),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: <Widget>[

          IconButton(
            icon: const Icon(Icons.person, color: Colors.black),
            onPressed: () {},
          )
        ],),
      body: Column(
        children: [

          CartProducts(),
          CartTotal(),
      ],
    ),
    );
  }
}