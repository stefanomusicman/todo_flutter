import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import './providers/todo_provider.dart';

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
    return Center(
      child: Container(
        margin: const EdgeInsets.all(25),
        width: 300,
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
                  context.read<ToDo>().addToDo(displayText);
                  textController.clear();
                });
              },
              child: Text(
                "Add To-Do",
                style: GoogleFonts.montserrat(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
