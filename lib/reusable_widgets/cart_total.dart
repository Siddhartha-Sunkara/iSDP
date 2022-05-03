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
        Container(
        padding: const EdgeInsets.symmetric(horizontal: 75),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total',
              style: GoogleFonts.montserrat(textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),),
            Text('${controller.total}',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold),),


          ],

        ),
      ),
    );
  }
}