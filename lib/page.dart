import 'package:flutter/material.dart';
import 'package:project2/menu.dart';
import 'package:google_fonts/google_fonts.dart';


class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  State<mainPage> createState() => _MyAppState();
}

class _MyAppState extends State<mainPage> {
  DateTime selectedDate = DateTime.now();
  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(1969),
      lastDate: DateTime(2023),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Customer Details', style: GoogleFonts.montserrat(textStyle: Theme.of(context).textTheme.headline4, fontSize: 20, color: Colors.purple.shade900,fontStyle: FontStyle.normal, fontWeight:FontWeight.w500 )),
            elevation: 0,
            backgroundColor: Colors.white,
            leading: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.search, color: Colors.black),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.person, color: Colors.black),
                onPressed: () {},
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
                 height: 225,
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
                  height: 8,
                ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      // style: TextStyle(fontFamily: 'Inter', fontSize: 15),
                      decoration: InputDecoration(

                        hintText: "Enter the first name",
                        hintStyle:  const TextStyle(fontFamily: 'Inter', fontSize: 15),
                        labelText: "First Name ",
                        contentPadding: EdgeInsets.all(13),
                        labelStyle: const TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(),
                        fillColor: Color.fromRGBO(212, 223, 255, 1),
                        filled:true,

                      ),
                      keyboardType: TextInputType.name,
                      obscureText: false,
                      maxLines: 1,),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child:
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Enter the last name",
                        hintStyle:  TextStyle(fontFamily: 'Inter', fontSize: 15),
                        labelText: "Last Name ",
                        contentPadding: EdgeInsets.all(13),
                        labelStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(),
                        fillColor: Color.fromRGBO(212, 223, 255, 1),
                        filled:true
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
                  decoration: InputDecoration(
                      hintText: "Enter the email address",
                      hintStyle:  const TextStyle(fontFamily: 'Inter', fontSize: 15),
                      labelText: "Email",
                      contentPadding: EdgeInsets.all(13),

                      labelStyle: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(),
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
                  decoration: InputDecoration(
                      hintText: "Male or Female or Others",
                      hintStyle:  TextStyle(fontFamily: 'Inter', fontSize: 15),
                      labelText: "Gender",
                      contentPadding: EdgeInsets.all(13),
                      labelStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(),
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
                  decoration: InputDecoration(
                      hintText: "Enter the Mobile Number",
                      hintStyle:  const TextStyle(fontFamily: 'Inter', fontSize: 15),
                      labelText: "Phone Number",
                      contentPadding: EdgeInsets.all(13),
                      counterText: "",
                      labelStyle: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(),
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

                    Container(
                      height: 50,

                        child:
                        ElevatedButton(onPressed: () { _selectDate(context); }, child: const Text('Enter Date of Birth') ,
                          style:ElevatedButton.styleFrom(primary: Colors.purple.shade900)  ,

                        )
                    )
                    )


          ]



              ),

                Padding(padding: EdgeInsets.all(8.0),
                child:
                Align(
                    alignment: Alignment.centerRight,
                    child:
                  FloatingActionButton(

                    child: Text('Next', textAlign: TextAlign.right),

                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return menu();
                      },

                      )
                      );
                    },
                    // style:FloatingActionButton.styleFrom(primary: Colors.purple.shade900)  ,
                    // print(nameController.text);
                    // print(passwordController.text);

                  )
                    ),

                  )

  ],

          )      )
      )
      ,
            )

          );



  }
}
