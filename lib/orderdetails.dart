import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/NavBar.dart';
import 'package:project2/database.dart';
import 'package:project2/screens/signin_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() => runApp(const QR());
SupabaseManager _supabaseManager = SupabaseManager();
// class orderDetails extends StatelessWidget {
//   const orderDetails({Key? key}) : super(key: key);
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       //theme: ThemeData(
//       //scaffoldBackgroundColor: Colors.deepOrange.shade100,
//       //),
//       debugShowCheckedModeBanner: false,
//       title: 'Order Details',
//       home: TableExample(),
//     );
//   }
// }
//
// class TableExample extends StatefulWidget {
//   const TableExample({Key? key}) : super(key: key);
//
//   @override
//   _TableExampleState createState() => _TableExampleState();
// }
//
// class _TableExampleState extends State<TableExample> {
//   Widget checkIcon() => const Padding(
//     padding: EdgeInsets.only(bottom: 16, top: 8),
//     child: Icon(
//       Icons.check_circle,
//       color: Colors.green,
//     ),
//   );
//
//   Widget cancelIcon() => const Padding(
//     padding: EdgeInsets.only(bottom: 16, top: 8),
//     child: Icon(
//       Icons.cancel,
//       color: Colors.red,
//     ),
//   );
//
//
//   Widget build(BuildContext context){
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Order Details', style: GoogleFonts.montserrat(textStyle: Theme.of(context).textTheme.headline4, fontSize: 20, color: Color.fromRGBO(255,0,56, 1),fontStyle: FontStyle.normal, fontWeight:FontWeight.w500 )),
//           elevation: 0,
//           backgroundColor: Colors.white,
//           leading: const Icon(
//             Icons.menu,
//             color: Colors.black,
//           ),
//           actions: <Widget>[
//             IconButton(
//               icon: const Icon(Icons.person, color: Colors.black),
//               onPressed: () {},
//             )
//           ],
//         ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Table(
//           defaultVerticalAlignment: TableCellVerticalAlignment.middle,
//           border: const TableBorder(verticalInside: BorderSide(width: 1, color: Color.fromRGBO(255,0,56,1), style: BorderStyle.solid)),
//           columnWidths: const {
//             0: FractionColumnWidth(.1),
//             1: FractionColumnWidth(.3),
//             2: FractionColumnWidth(.2),
//             3: FractionColumnWidth(.2),
//             4: FractionColumnWidth(.2),
//           },
//           children: [
//             TableRow(children: [
//               Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: const <Widget>[
//                   SizedBox(
//                     height: 16,
//                   ),
//                   Text('Item No.',
//                       textAlign: TextAlign.center),
//                   SizedBox(
//                     height: 16,
//                   ),
//                 ],
//               ),
//               Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: const <Widget>[
//                   SizedBox(
//                     height: 16,
//                   ),
//                   Text('Food Name'),
//                   SizedBox(
//                     height: 16,
//                   ),
//                 ],
//               ),
//               Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: const <Widget>[
//                   SizedBox(
//                     height: 16,
//                   ),
//                   Text('Quantity'),
//                   SizedBox(
//                     height: 16,
//                   ),
//                 ],
//               ),
//               Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: const <Widget>[
//                   SizedBox(
//                     height: 16,
//                   ),
//                   Text('Per Unit Price',
//                       textAlign: TextAlign.center),
//                   SizedBox(
//                     height: 16,
//                   ),
//                 ],
//               ),
//               Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: const <Widget>[
//                   SizedBox(
//                     height: 16,
//                   ),
//                   Text('Price (₹)', textAlign: TextAlign.center),
//                   SizedBox(
//                     height: 16,
//                   ),
//                 ],
//               ),
//             ])
//           ],  //children
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.arrow_forward_ios, color: Colors.white,),
//         backgroundColor: const Color.fromRGBO(255,0,56,1),
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => const QR()),
//           );
//         },
//       ),
//     );
//   }
// }


class QR extends StatelessWidget {
  const QR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: const Color.fromRGBO(32, 33, 37,1),
      drawer: NavBar(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,

          title: Text('Scan to Pay', style: GoogleFonts.montserrat(textStyle:Theme.of(context).textTheme.headline4, fontSize: 20, color: Colors.black,fontStyle: FontStyle.normal, fontWeight:FontWeight.w500  ))
          ,actions: <Widget>[

      IconButton(
      icon:  const FaIcon(FontAwesomeIcons.arrowRightFromBracket, color: Colors.black),
      onPressed: (
          ) {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return SignInScreen();
        }
        ));
      },
    )
    ],
      ),
      body:
      Column(
        children:[
          SizedBox(height: 40,),
          Container(
              color: Color.fromRGBO(32, 33, 37,1),

              alignment: Alignment.center,
              child: Text('Sobham Bhagirath Panja', style: GoogleFonts.montserrat(fontSize: 14,color: Colors.white),),
            ),
          SizedBox(height: 10,),
          Container(
            // color: Color.fromRGBO(162, 162, 162,1),
            padding: const EdgeInsets.all(16.0),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                FaIcon(FontAwesomeIcons.buildingColumns, color: Colors.white,),
                SizedBox(width: 5,),
                Text('SBI Bank Ltd 0034', style: GoogleFonts.montserrat(fontSize: 20,color: Colors.white),),
              ],
            ),
          ),

        Center(
          child: Image(
              image: AssetImage('assets/images/qr.jpeg')
          ),
        ),
          Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: Text('UPI ID: ceedaysid@okicici', style: GoogleFonts.montserrat(fontSize: 20,color: Colors.white),),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: Text('Scan this to pay me', style: GoogleFonts.montserrat(fontSize: 20,color: Colors.white),),
          ),
        ],
      ),


    );
  }
}
