import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/orderdetails.dart';
import 'package:project2/reusable_widgets/cart_products.dart';
import 'package:project2/reusable_widgets/cart_total.dart';

import '../reusable_widgets/cart_products.dart';

class invoice extends StatelessWidget{
  const invoice({Key? key }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text('Invoice ' , style: GoogleFonts.montserrat(textStyle: Theme.of(context).textTheme.headline4, fontSize: 20, color: Colors.green.shade900,fontStyle: FontStyle.normal, fontWeight:FontWeight.w500 )),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: <Widget>[

          IconButton(
            icon: FaIcon(FontAwesomeIcons.circleChevronRight, color: Colors.black),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return QR();
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