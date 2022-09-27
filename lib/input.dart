import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  const InputField({super.key});

  @override
  State<InputField> createState() => InputFieldState();
}

class InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      TextFormField(
        textAlign: TextAlign.center,
        // controller: textController,
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
            // displayText = textController.text;
            // toDos.add(displayText);
            // textController.clear();
          });
        },
        child: const Text("Add To-Do"),
      ),
    ]);
  }
}
