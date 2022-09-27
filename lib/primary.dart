import 'package:flutter/material.dart';
import './Input.dart';

class Primary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('To-Do List'),
          centerTitle: true,
        ),
        body: InputField(),
      ),
    );
  }
}
