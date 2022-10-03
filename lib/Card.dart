import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/todo_provider.dart';

class CustomCard extends StatelessWidget {
  final String todo;

  const CustomCard({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Card(
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
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Raleway',
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
