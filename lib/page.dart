import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:project2/NavBar.dart';
import 'package:project2/menu.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/screens/catalog_screen.dart';


class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  DateTime selectedDate = DateTime.now();
  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1969),
      lastDate: DateTime(2023),
    );
    if(selectedDate != null ){
      print(selectedDate);
      String formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate);
      print(formattedDate);
    }else{
      print("Date is not selected");
    }





  }
  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }
  @override
  final TextEditingController _firstNameTextController = TextEditingController();
  final TextEditingController _lastNameTextController = TextEditingController();
  final TextEditingController _cusEmailTextController = TextEditingController();
  final TextEditingController _phoneTextController = TextEditingController();
  final TextEditingController _genderTextController = TextEditingController();
  final TextEditingController dateinput = TextEditingController() ;

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial',
      home: Scaffold(
        drawer: NavBar() ,
          appBar: AppBar(
                iconTheme: IconThemeData(color: Colors.black),

            title: Text('Customer Details', style: GoogleFonts.montserrat(textStyle: Theme.of(context).textTheme.headline4, fontSize: 20, color: Colors.purple.shade900,fontStyle: FontStyle.normal, fontWeight:FontWeight.w500 )),
            elevation: 0,
            backgroundColor: Colors.white,
            // leading: const Icon(
            //   Icons.menu,
            //   color: Colors.black,
            // ),
            actions: <Widget>[

              IconButton(
                icon: const FaIcon(FontAwesomeIcons.circleChevronRight, color: Colors.black),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const CatalogScreen();
                  }
                  ));
                },
              )
            ],
          ),
        body:
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: SingleChildScrollView(
              padding:const EdgeInsets.all(1),
             child:

             Column(

              children: [
                 Container(
                 height: 300,
                 width: 500,
                 decoration: const BoxDecoration(
                     image: DecorationImage(
                         image: AssetImage('assets/images/5.jpg'),
                         fit: BoxFit.cover
                     ),
                     borderRadius: BorderRadius.all(Radius.circular(10)
                     )
                 )
                /*const Image(
             decoration: BoxDecoration(

                    image: AssetImage('assets/images/food.jpg'),
                    width: 500,
                    height: 200,
                    fit:BoxFit.fill,

                    borderRadius: BorderRadius.all(Radius.circular(10)*/


                ) ,


                const SizedBox(
                  height: 35,
                ),
              Row(
                children:  [
                  Expanded(
                    child: TextField(
                      // style: TextStyle(fontFamily: 'Inter', fontSize: 15),
                      controller: _firstNameTextController,
                      decoration: InputDecoration(

                        hintText: "Enter the first name",
                        hintStyle:  TextStyle(fontFamily: 'Inter', fontSize: 15),
                        labelText: "First Name ",
                        contentPadding: EdgeInsets.all(13),
                        labelStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                        fillColor: Color.fromRGBO(212, 223, 255, 1),
                        filled:true,

                      ),
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      maxLines: 1,),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child:
                  TextField(
                    controller: _lastNameTextController,
                    decoration: InputDecoration(
                        hintText: "Enter the last name",
                        hintStyle:  TextStyle(fontFamily: 'Inter', fontSize: 15),
                        labelText: "Last Name ",
                        contentPadding: EdgeInsets.all(13),
                        labelStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                        fillColor: Color.fromRGBO(212, 223, 255, 1),
                        filled:true,

                    ),
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    maxLines: 1,),),
                ],
              ),

                const SizedBox(
                  height: 8,
                ),
                  TextField(
                   controller: _cusEmailTextController,
                  decoration: InputDecoration(
                      hintText: "Enter the email address",
                      hintStyle:  TextStyle(fontFamily: 'Inter', fontSize: 15),
                      labelText: "Email",
                      contentPadding: EdgeInsets.all(13),

                      labelStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      fillColor: Color.fromRGBO(212, 223, 255, 1),
                      filled:true
                  ),
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  maxLines: 1,),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: _genderTextController,
                  decoration: InputDecoration(
                      hintText: "Male or Female or Others",
                      hintStyle:  const TextStyle(fontFamily: 'Inter', fontSize: 15),
                      labelText: "Gender",
                      contentPadding: const EdgeInsets.all(13),
                      labelStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(20))),
                      fillColor: Color.fromRGBO(212, 223, 255, 1),
                      filled:true
                  ),
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  maxLines: 1,),
                const SizedBox(
                  height: 8,
                ),

                TextField(
                  controller: _phoneTextController,
                  decoration: InputDecoration(
                      hintText: "Enter the Mobile Number",
                      hintStyle:  TextStyle(fontFamily: 'Inter', fontSize: 15),
                      labelText: "Phone Number",
                      contentPadding: EdgeInsets.all(13),
                      counterText: "",
                      labelStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                      fillColor: Color.fromRGBO(212, 223, 255, 1),
                      filled:true
                  ),
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  maxLength: 10,
                  maxLines: 1,),
              const SizedBox(
                height: 8,
              ),
              Row(

                  children:[
                    Expanded(child:

                    SizedBox(
                      height: 50,

                        child:
                        // ElevatedButton(onPressed: () { _selectDate(context); }, child: const Text('Enter Date of Birth') ,
                        //   style:ElevatedButton.styleFrom(primary: Colors.purple.shade900)  ,
                        //
                        // )
                TextField(

                controller: dateinput,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.calendar_today), //icon of text field
                    labelText: "Enter Date",
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    fillColor: Color.fromRGBO(212, 223, 255, 1),
                    filled:true
                ),

                readOnly: true,  //set it true, so that user will not able to edit text
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context, initialDate: DateTime.now(),
                      firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2101)
                  );

                  if(pickedDate != null ){
                    print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                    String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
                    print(formattedDate); //formatted date output using intl package =>  2021-03-16
                    //you can implement different kind of Date Format here according to your requirement

                    setState(() {
                      // final TextEditingController dateinput = TextEditingController() ;
                      dateinput.text = formattedDate; //set output date to TextField value.
                    });
                  }else{
                    print("Date is not selected");
                  }
                },
              )


                    )
                    )


          ]



              ),

                // Padding(padding: EdgeInsets.all(8.0),
                // child:
                // Align(
                //     alignment: Alignment.centerRight,
                //     child:
                //   FloatingActionButton(
                //
                //     child: Text('Next', textAlign: TextAlign.right),
                //
                //     onPressed: (){
                //       Navigator.push(context, MaterialPageRoute(builder: (context){
                //         return menu();
                //       },
                //
                //       )
                //       );
                //     },
                //     // style:FloatingActionButton.styleFrom(primary: Colors.purple.shade900)  ,
                //     // print(nameController.text);
                //     // print(passwordController.text);
                //
                //   )
                //     ),
                //
                //   )

  ],

          )      )
      )
      ,
            )

          );



  }
}
