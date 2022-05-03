import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2/models/product_model.dart';
import 'package:project2/controllers/cart_controller.dart';
class CatalogProducts extends StatelessWidget{
  const CatalogProducts({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(child: ListView.builder(
        itemCount: Product.product.length ,
        itemBuilder:(BuildContext context , int index){
          return CatalogProductsCard(index: index);
        }));
  }
}

class CatalogProductsCard extends StatelessWidget{
  final cartController = Get.put(CartController());
  final int index;
      CatalogProductsCard(
          {Key? key,required this.index}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
            Product.product[index].imageUrl,
          ),
        ),
        SizedBox(width: 20),
        Expanded(child:Text(Product.product[index].name,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)),

        SizedBox(width: 10),
        Container(child: Text("Rs")),
        SizedBox(width: 5,),

        Align(alignment: Alignment.centerLeft, child: Text('${Product.product[index].price}')),

        IconButton(onPressed: (){
          cartController.addProduct(Product.product[index]);
        }, icon: Icon(Icons.add_circle,
        ),
        ),
      ],
    ),);  }
    }

