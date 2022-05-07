import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2/controllers/cart_controller.dart';

import '../models/product_model.dart';


class CartProducts extends StatelessWidget{
  final CartController controller= Get.find();
  CartProducts({Key? key} ):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(()=>

           Column(
             children: [
               SizedBox(height: 600,
          child:



          ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (BuildContext context, int index){
                return CartProductCard(
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

class CartProductCard extends StatelessWidget{
  final CartController controller;
  final Product product;
  final int quantity;
  final int index;



  const CartProductCard({
    Key? key,
  required this.controller,
  required this.product,
  required this.quantity,

  required this.index}): super(key :key);


  @override
  Widget build(BuildContext context) {
      return Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child:
          Container(

            decoration: BoxDecoration(
              color: Color.fromRGBO(193, 244, 197,1),
                border: Border.all(
                  color: Colors.green.shade800,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: CircleAvatar(radius: 30,
                        backgroundImage: NetworkImage(
                          product.imageUrl,
                        ),),
                    ),
                    // const SizedBox(
                    //   width: 10,
                    // ),
                    Expanded(child:Text(product.name) ),
                    SizedBox(width: 40),
                    IconButton(onPressed: (
                        ){
                      controller.removeProduct(product);
                    },
                        icon: Icon(Icons.remove_circle)),
                    SizedBox(width: 35),
                    Expanded(child:Text('${quantity}') ),
                    IconButton(onPressed: (){
                      controller.addProduct(product);
                    },
                        icon: Icon(Icons.add_circle)),



                  ],
                )
              ],
            ),
          )
        );
  }

}
