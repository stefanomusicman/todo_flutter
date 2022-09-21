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
        body: const InputField(),
      ),
    );
  }
}

// Input field including Input and Submit button
class InputField extends StatefulWidget {
  const InputField({super.key});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  TextEditingController textController = TextEditingController();
  String displayText = "";
  var toDos = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000,
      height: 500,
      margin: const EdgeInsets.only(top: 25),
      child: Center(
        child: Container(
          width: 300,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                textAlign: TextAlign.center,
                controller: textController,
                maxLines: null,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  hintText: 'Enter a to do',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    displayText = textController.text;
                    toDos.add(displayText);
                    textController.clear();
                    // print(toDos);
                  });
                },
                child: Text("Add To-Do"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
