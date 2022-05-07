

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/screens/orderdetails.dart';
import 'package:project2/reusable_widgets/cart_products.dart';
import 'package:project2/reusable_widgets/cart_total.dart';
import 'package:project2/reusable_widgets/invoice_Products.dart';
import 'package:project2/screens/page.dart';
import '../reusable_widgets/NavBar.dart';
import '../models/product_model.dart';
import '../reusable_widgets/cart_products.dart';
import 'package:project2/controllers/cart_controller.dart';
import 'package:project2/controllers/cart_controller.dart';

import 'package:pdf/pdf.dart';

class invoice extends StatelessWidget {
  invoice({Key? key }) : super(key: key);

  @override

  Widget build(BuildContext context) {

    return Scaffold(
        drawer: NavBar(),
        backgroundColor: const Color.fromRGBO(230, 230, 230, 1),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),

          title: Text('Invoice ', style: GoogleFonts.montserrat(textStyle: Theme
              .of(context)
              .textTheme
              .headline4,
              fontSize: 20,
              color: Colors.green.shade900,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500)),
          elevation: 0,
          backgroundColor: Colors.white,

          actions: <Widget>[

            IconButton(
              icon: const FaIcon(
                  FontAwesomeIcons.circleChevronRight, color: Colors.black),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return QR();
                }
                ));
              },
            )
          ],),
        body: Container(

            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child:

              Container(

                  color: Colors.white,
                  child: SizedBox.expand(
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 400,
                          color: Colors.blue,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("Invoice", style: GoogleFonts.montserrat(fontSize: 40,color: Colors.white),),

                        ),
                        SizedBox(height: 10,),
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Container(
                                height: 20,
                                width: 150,
                                color: Colors.white,
                                padding: EdgeInsets.fromLTRB(15,3 ,3,3),
                                child: Text("Customer Details: ", style: GoogleFonts.montserrat(fontSize: 10,color: Colors.black),),

                              ),

                              Container(
                                height: 20,
                                width: 150,
                                color: Colors.white,
                                padding: EdgeInsets.fromLTRB(15,3 ,3,3),
                                child: Text("Vendor Details:", style: GoogleFonts.montserrat(fontSize: 10,color: Colors.black),),

                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 3,),
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Container(
                                height: 20,
                                width: 150,
                                color: Colors.white,
                                padding: EdgeInsets.fromLTRB(15,3 ,3,3),
                                child: Text("Bill to: Siddhartha Sunkara", style: GoogleFonts.montserrat(fontSize: 10,color: Colors.black),),

                              ),

                              Container(
                                height: 20,
                                width: 150,
                                color: Colors.white,
                                padding: EdgeInsets.fromLTRB(15,3 ,3,3),
                                child: Text("Sobham Panja", style: GoogleFonts.montserrat(fontSize: 10,color: Colors.black),),

                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 3,),
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Container(
                                height: 20,
                                width: 150,
                                color: Colors.white,
                                padding: EdgeInsets.fromLTRB(15,3 ,3,3),
                                child: Text("Email: Sid@gmail.com", style: GoogleFonts.montserrat(fontSize: 10,color: Colors.black),),

                              ),

                              Container(
                                height: 20,
                                width: 150,
                                color: Colors.white,
                                padding: EdgeInsets.fromLTRB(15,3 ,3,3),
                                child: Text("NIIT University,Jaipur", style: GoogleFonts.montserrat(fontSize: 10,color: Colors.black),),

                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 3,),
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Container(
                                height: 20,
                                width: 150,
                                color: Colors.white,
                                padding: EdgeInsets.fromLTRB(15,3 ,3,3),
                                child: Text("Phone: 9347564913", style: GoogleFonts.montserrat(fontSize: 10,color: Colors.black),),

                              ),

                              // Container(
                              //   height: 20,
                              //   width: 150,
                              //   color: Colors.red,
                              //   padding: EdgeInsets.fromLTRB(15,3 ,3,3),
                              //   child: Text("Bill to:", style: GoogleFonts.montserrat(fontSize: 10,color: Colors.white),),
                              //
                              // ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Container(
                                height: 20,
                                width: 150,
                                color: Colors.white,
                                padding: EdgeInsets.fromLTRB(15,3 ,3,3),
                                child: Text("Date of Birth: 11-12-2002", style: GoogleFonts.montserrat(fontSize: 10,color: Colors.black),),

                              ),

                              // Container(
                              //   height: 20,
                              //   width: 150,
                              //   color: Colors.red,
                              //   padding: EdgeInsets.fromLTRB(15,3 ,3,3),
                              //   child: Text("Vendor Details:", style: GoogleFonts.montserrat(fontSize: 10,color: Colors.white),),
                              //
                              // ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Container(
                                height: 20,
                                width: 100,
                                color: Colors.white,
                                padding: EdgeInsets.fromLTRB(15,3 ,3,3),
                                child: Text("Item", style: GoogleFonts.montserrat(fontSize: 13,color: Colors.black),),

                              ),
                              Container(
                                height: 20,
                                width: 100,
                                color: Colors.white,
                                padding: EdgeInsets.fromLTRB(15,3 ,3,3),
                                child: Text("Quantity", style: GoogleFonts.montserrat(fontSize: 13,color: Colors.black),),

                              ),

                              Container(
                                alignment: Alignment.centerRight,
                                height: 20,
                                width: 100,
                                color: Colors.white,
                                padding: EdgeInsets.fromLTRB(15,3 ,3,3),
                                child: Text("Sub Total  ", style: GoogleFonts.montserrat(fontSize: 13,color: Colors.black),),

                              ),
                            ],
                          ),
                        ),
                        // Expanded(child:Text(Product.product[index].name,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)),

                        Container(
                          child:
                          InvoiceProducts(),

                        ),
                        Container(
                          child:
                          CartTotal(),
                        )
                        // Container(
                        //   padding: const EdgeInsets.symmetric(horizontal: 50),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Text('Total Price',
                        //         style: GoogleFonts.montserrat(
                        //             fontSize: 28,
                        //             fontWeight: FontWeight.bold),),
                        //       Text('${controller .total}',
                        //         style:  GoogleFonts.montserrat(
                        //             fontSize: 28,
                        //             fontWeight: FontWeight.bold),),
                        //
                        //
                        //
                        //     ],
                        //
                        //   ),
                        // ),
                      ],
                    ),
                  )
                ),

            )));
  }

}
