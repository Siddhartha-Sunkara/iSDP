import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/page.dart';

import 'package:project2/customerDetails.dart';
import 'package:project2/reusable_widgets/reusable_widget.dart';
import 'package:project2/screens/home_screen.dart';
import 'package:project2/screens/signup_screen.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();

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
                        image: AssetImage('assets/images/1.jpg'),
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

                  'User Login',

                  style: GoogleFonts.montserrat(textStyle: Theme.of(context).textTheme.headline4, fontSize: 30, color: Colors.lightBlue,fontStyle: FontStyle.normal, fontWeight:FontWeight.w500 )
                      )),

            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child:  Text(
                  'Sign in',
                  style: GoogleFonts.montserrat(textStyle: Theme.of(context).textTheme.headline4, fontSize: 20, color: Colors.lightBlue,fontStyle: FontStyle.normal, fontWeight:FontWeight.w500 ),
                )),
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
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
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
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password?',),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: Text('Login'),
                  onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                          return mainPage();
                      }
                      ));
                  }  ,
                    // print(nameController.text);
                    // print(passwordController.text);
                  
                )
            ),
            Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ))
  ;}}