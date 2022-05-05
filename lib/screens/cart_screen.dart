import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/reusable_widgets/cart_products.dart';
import 'package:project2/reusable_widgets/cart_total.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project2/screens/invoice.dart';
import 'package:project2/screens/print.dart';
import '../reusable_widgets/cart_products.dart';

class CartScreen extends StatelessWidget{
  const CartScreen({Key? key }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text('Your Cart ' , style: GoogleFonts.montserrat(textStyle: Theme.of(context).textTheme.headline4, fontSize: 20, color: Colors.green.shade900,fontStyle: FontStyle.normal, fontWeight:FontWeight.w500 )),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: <Widget>[

          IconButton(
            icon:  FaIcon(FontAwesomeIcons.circleChevronRight, color: Colors.black),
            onPressed: (
                ) {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return print();
              }
              ));
            },
          )
        ],),
      body: SingleChildScrollView(
        child:
          Column(
            children: [

              CartProducts(),
              CartTotal(),
          ],
    ),

      ),
    );
  }
}