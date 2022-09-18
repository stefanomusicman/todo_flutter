import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('To-Do List'),
          centerTitle: true,
        ),
        body: InputField(),
      ),
    );
  }
}

class InputField extends StatefulWidget {
  const InputField({super.key});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  TextEditingController textController = TextEditingController();
  String displayText = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          textAlign: TextAlign.center,
          controller: textController,
          maxLines: null,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter a to do',
          ),
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                displayText = textController.text;
              });
            },
            child: Text("Add To-Do")),
      ],
    );
  }
}
