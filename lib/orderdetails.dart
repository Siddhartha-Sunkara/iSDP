import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(orderDetails());

class orderDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(
      //scaffoldBackgroundColor: Colors.deepOrange.shade100,
      //),
      debugShowCheckedModeBanner: false,
      title: 'Order Details',
      home: TableExample(),
    );
  }
}

class TableExample extends StatefulWidget {
  @override
  _TableExampleState createState() => _TableExampleState();
}

class _TableExampleState extends State<TableExample> {
  Widget checkIcon() => Padding(
    padding: EdgeInsets.only(bottom: 16, top: 8),
    child: Icon(
      Icons.check_circle,
      color: Colors.green,
    ),
  );

  Widget cancelIcon() => Padding(
    padding: EdgeInsets.only(bottom: 16, top: 8),
    child: Icon(
      Icons.cancel,
      color: Colors.red,
    ),
  );


  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('Order Details', style: GoogleFonts.montserrat(textStyle: Theme.of(context).textTheme.headline4, fontSize: 20, color: Color.fromRGBO(255,0,56, 1),fontStyle: FontStyle.normal, fontWeight:FontWeight.w500 )),
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.person, color: Colors.black),
              onPressed: () {},
            )
          ],
        ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          border: TableBorder(verticalInside: BorderSide(width: 1, color: Color.fromRGBO(255,0,56,1), style: BorderStyle.solid)),
          columnWidths: {
            0: FractionColumnWidth(.1),
            1: FractionColumnWidth(.3),
            2: FractionColumnWidth(.2),
            3: FractionColumnWidth(.2),
            4: FractionColumnWidth(.2),
          },
          children: [
            TableRow(children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 16,
                  ),
                  Text('Item No.',
                      textAlign: TextAlign.center),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 16,
                  ),
                  Text('Food Name'),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 16,
                  ),
                  Text('Quantity'),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 16,
                  ),
                  Text('Per Unit Price',
                      textAlign: TextAlign.center),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 16,
                  ),
                  Text('Price (₹)', textAlign: TextAlign.center),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ])
          ],  //children
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward_ios, color: Colors.white,),
        backgroundColor: Color.fromRGBO(255,0,56,1),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const QR()),
          );
        },
      ),
    );
  }
}


class QR extends StatelessWidget {
  const QR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.red.shade600,
        title: const Text('Scan to Pay'),
      ),
      body: Center(
        child: Image(
            image: AssetImage('images/qr.jpeg')
        ),
      ),
    );
  }
}
