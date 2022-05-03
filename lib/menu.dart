import  'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2/main.dart';
import 'package:project2/screens/catalog_screen.dart';


// void main(){
//   runApp(GetMaterialApp(home: MyApp));
// }

class menu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CatalogScreen(),
      );

  }
}
