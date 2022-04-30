import 'package:flutter/material.dart';
import 'package:project2/customerDetails.dart';
import 'package:project2/menu.dart';
import 'package:project2/loginPage.dart';
import 'package:project2/screens/signin_screen.dart';
import 'package:google_fonts/google_fonts.dart';


void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Myapp',
      home:SignInScreen(),
    );
  }
}

