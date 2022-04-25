import 'package:flutter/material.dart';

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
            title: const Text('Customer Details'),
          ),
          body:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              padding:const EdgeInsets.all(1),
             child:

             Column(

              children: [
                 Container(
                 height: 200,
                 width: 500,
                 decoration: const BoxDecoration(
                     image: DecorationImage(
                         image: AssetImage('assets/images/food.jpg'),
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
                const TextField(
                  // style: TextStyle(fontFamily: 'Inter', fontSize: 15),
                  decoration: InputDecoration(

                      hintText: "Enter the first name",
                      hintStyle:  TextStyle(fontFamily: 'Inter', fontSize: 15),
                      labelText: "First Name ",

                      labelStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(),
                      fillColor: Colors.black12,
                      filled:true,

                  ),
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  maxLines: 1,),
                const SizedBox(
                  height: 8,
                ),
                const TextField(
                  decoration: InputDecoration(
                      hintText: "Enter the last name",
                      hintStyle:  TextStyle(fontFamily: 'Inter', fontSize: 15),
                      labelText: "Last Name ",
                      labelStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(),
                      fillColor: Colors.black12,
                      filled:true
                  ),
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  maxLines: 1,),
                const SizedBox(
                  height: 8,
                ),
                const TextField(
                  decoration: InputDecoration(
                      hintText: "Enter the email address",
                      hintStyle:  TextStyle(fontFamily: 'Inter', fontSize: 15),
                      labelText: "Email",
                      labelStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(),
                      fillColor: Colors.black12,
                      filled:true
                  ),
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  maxLines: 1,),
                const SizedBox(
                  height: 8,
                ),
                const TextField(
                  decoration: InputDecoration(
                      hintText: "Male or Female or Others",
                      hintStyle:  TextStyle(fontFamily: 'Inter', fontSize: 15),
                      labelText: "Gender",
                      labelStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(),
                      fillColor: Colors.black12,
                      filled:true
                  ),
                  keyboardType: TextInputType.name,
                  obscureText: false,
                  maxLines: 1,),
                const SizedBox(
                  height: 8,
                ),

                const TextField(
                  decoration: InputDecoration(
                      hintText: "Enter the Mobile Number",
                      hintStyle:  TextStyle(fontFamily: 'Inter', fontSize: 15),
                      labelText: "Phone Number",
                      counterText: "",
                      labelStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(),
                      fillColor: Colors.black12,
                      filled:true
                  ),
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  maxLength: 10,
                  maxLines: 1,),
                ElevatedButton(onPressed: () { _selectDate(context); }, child: const Text('Enter Date of Birth'),

                ),
                const SizedBox(
                  height: 8,
                ),


              ],

            ),
            )

          )

      ),
    );
  }
}
