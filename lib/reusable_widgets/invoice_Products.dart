import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2/controllers/cart_controller.dart';

import '../models/product_model.dart';


class InvoiceProducts extends StatelessWidget{
  final CartController controller= Get.find();
  InvoiceProducts({Key? key} ):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(()=>

        Column(
          children: [
            SizedBox(height: 200,
              child:



              ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (BuildContext context, int index){
                    return InvoiceProductCard(
                      controller: controller,
                      product: controller.products.keys.toList()[index],
                      quantity: controller.products.values.toList()[index],

                      index: index,
                    );
                  }),),
          ],
        ),
    );
  }

}

class InvoiceProductCard extends StatelessWidget{
  final CartController controller;
  final Product product;
  final int quantity;
  final int index;

  const InvoiceProductCard({
    Key? key,
    required this.controller,
    required this.product,
    required this.quantity,
    required this.index}): super(key :key);

  @override
  Widget build(BuildContext context) {
    final value = quantity * product.price;
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 1),
        child:
        Container(

          decoration: BoxDecoration(
              color: Colors.black12,
              border: Border.all(
                color: Colors.black,
              ),

          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  // mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child:Text(product.name) ),


                    SizedBox(width: 35),
                    Expanded(child:Text('${quantity}') ),
                    SizedBox(width: 30),
                    Container(child:Text('${value}'),)
                    // Expanded(child: Text('${price}')),



                  ],
                )
              ],
            ),
          ),
        )
    );
  }

}
