import 'package:flutter/material.dart';
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
          title: const Text('To-Do List'),
          centerTitle: true,
        ),
        body: Column(
          children: const [
            InputField(),
            List(),
          ],
        ),
      ),
    );
  }
}
