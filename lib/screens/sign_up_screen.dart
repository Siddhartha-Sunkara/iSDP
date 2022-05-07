import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/screens/page.dart';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'dart:io';


import 'package:project2/reusable_widgets/reusable_widget.dart';
import 'package:project2/screens/home_screen.dart';
import 'package:project2/screens/signin_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _usernameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                height: 300,
                width: 500,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/11.jpg'),
                        fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)
                    )
                )
            ),

            // const SizedBox(
            //     height: 250,
            // ),

            Container(
                alignment: Alignment.center,
                padding:  EdgeInsets.all(10),
                child: Text(

                    'User Registration',

                    style: GoogleFonts.montserrat(textStyle: Theme.of(context).textTheme.headline4, fontSize: 30, color: Colors.lightBlue,fontStyle: FontStyle.normal, fontWeight:FontWeight.w500 )
                )),

            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child:  Text(
                  'Sign up',
                  style: GoogleFonts.montserrat(textStyle: Theme.of(context).textTheme.headline4, fontSize: 20, color: Colors.lightBlue,fontStyle: FontStyle.normal, fontWeight:FontWeight.w500 ),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _usernameTextController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email, color: Colors.blue),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)),
                  labelText: 'Email address',
                  hintText: 'Enter your email address',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _emailTextController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                      Icons.account_circle, color: Colors.blue),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)
                  ),
                  labelText: 'Username',
                  hintText: 'Enter your username'
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(
                obscureText: true,
                controller: _passwordTextController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.password, color: Colors.blue),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)),
                  labelText: 'Password',
                  hintText: 'Enter the Password',
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: Text('Register'),
                  onPressed: () {
                    // _supabase.sign

                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return SignInScreen();
                    }
                    ));
                  }  ,
                  // print(nameController.text);
                  // print(passwordController.text);

                )
            ),

          ],
        ))
    ;}}



// Text(child: 'Hello', style : TextStyle(fontsize:24)