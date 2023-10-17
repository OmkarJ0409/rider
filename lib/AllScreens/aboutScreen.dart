// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:rider_app/AllScreens/mainscreen.dart';

class AboutScreen extends StatefulWidget
{
  static const String idScreen = "about";

  @override
  _MyAboutScreenState createState() => _MyAboutScreenState();
}

class _MyAboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            height: 220,
            child: Center(
              child: Image.asset('images/uberx.png'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30, left: 24, right: 24),
            child: Column(
              children: <Widget>[
                Text(
                  'Uber  Clone',
                  style: TextStyle(fontSize: 90, fontFamily: 'Signatra'),
                ),
                SizedBox(height: 30),
                Text(
                  'This app has been developed by Omkar Jagtap, Krish Bhanushali,'
                      ' Kimaya Chaudhari, Saikumar Lopinti ',
                  style: TextStyle(fontFamily: "Brand-Bold"),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          SizedBox(height: 40),
          TextButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, MainScreen.idScreen, (route) => false);
            },
            child: const Text(
              'Go Back',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
        ], // Close the children list
      ),
    ); // Close the Scaffold
  }
}
