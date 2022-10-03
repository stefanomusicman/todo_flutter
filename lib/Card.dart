import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import './providers/todo_provider.dart';

class CustomCard extends StatelessWidget {
  final String todo;

  const CustomCard({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 10,
      color: const Color.fromRGBO(34, 195, 251, 1.0),
      child: SizedBox(
        width: 300,
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
              child: Text(
                todo,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: GoogleFonts.ubuntu().fontFamily,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            IconButton(
              onPressed: () => context.read<ToDo>().removeToDo(todo),
              icon: const Icon(
                Icons.delete_outline,
                size: 20.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
