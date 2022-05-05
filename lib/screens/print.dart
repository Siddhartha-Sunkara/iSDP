import 'package:flutter/material.dart';
import 'package:esc_pos_utils/esc_pos_utils.dart';
import 'package:esc_pos_printer/esc_pos_printer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/screens/info.dart';

class print extends StatelessWidget{




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:  AppBar(title:  Text('Invoice  ' , style: GoogleFonts.montserrat(textStyle: Theme.of(context).textTheme.headline4, fontSize: 20, color: Colors.green.shade900,fontStyle: FontStyle.normal, fontWeight:FontWeight.w500 )),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: <Widget>[

          IconButton(
            icon:  FaIcon(FontAwesomeIcons.circleChevronRight, color: Colors.black),
            onPressed: (
                ) async {
              const PaperSize paper = PaperSize.mm80;
              final profile = await CapabilityProfile.load();
              final printer = NetworkPrinter(paper, profile);
              bill();
              // Navigator.push(context, MaterialPageRoute(builder: (context){
              //   return invoice();
              // }
              // ));
            },
          )
        ],),
      body: Container(
        child: ElevatedButton(onPressed: () {

      }, child: Text("Print the Bill"),
      ),
    ));
  }}


Future<void> testReceipt(NetworkPrinter printer) async {
  const PaperSize paper = PaperSize.mm80;
final profile = await CapabilityProfile.load();
  final printer = NetworkPrinter(paper, profile);
  final PosPrintResult res = await printer.connect('192.168.0.123', port: 9100);

  if (res == PosPrintResult.success) {
    testReceipt(printer);
    printer.disconnect();
  }

  printer.text(
      'Regular: aA bB cC dD eE fF gG hH iI jJ kK lL mM nN oO pP qQ rR sS tT uU vV wW xX yY zZ');
  printer.text('Special 1: àÀ èÈ éÉ ûÛ üÜ çÇ ôÔ',
      styles: PosStyles(codeTable: 'CP1252'));
  printer.text('Special 2: blåbærgrød',
      styles: PosStyles(codeTable: 'CP1252'));

  printer.text('Bold text', styles: PosStyles(bold: true));
  printer.text('Reverse text', styles: PosStyles(reverse: true));
  printer.text('Underlined text',
      styles: PosStyles(underline: true), linesAfter: 1);
  printer.text('Align left', styles: PosStyles(align: PosAlign.left));
  printer.text('Align center', styles: PosStyles(align: PosAlign.center));
  printer.text('Align right',
      styles: PosStyles(align: PosAlign.right), linesAfter: 1);

  printer.text('Text size 200%',
      styles: PosStyles(
        height: PosTextSize.size2,
        width: PosTextSize.size2,
      ));

  printer.feed(2);
  printer.cut();
}