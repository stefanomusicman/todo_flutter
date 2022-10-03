import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './Input.dart';
import './list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'To-Do List',
            style: GoogleFonts.montserrat(),
          ),
          centerTitle: true,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/nyc.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: const [
              InputField(),
              List(),
            ],
          ),
        ),
      ),
    );
  }
}
