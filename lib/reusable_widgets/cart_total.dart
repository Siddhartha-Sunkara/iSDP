

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/controllers/cart_controller.dart';

class CartTotal extends StatelessWidget{
  final CartController controller = Get.find();
  CartTotal({Key? key}): super(key : key );

  @override
  Widget build(BuildContext context) {
    return Obx(()=>
        SingleChildScrollView(
          child:
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Total Price',
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.bold),),
                Text('Rs',style:  GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.bold),),
                Text('${controller.total}',
                  style:  GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.bold),),


              ],

            ),
          ),

        ),
    );
  }
}
