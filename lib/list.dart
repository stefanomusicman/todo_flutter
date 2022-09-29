import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/todo_provider.dart';

class List extends StatefulWidget {
  const List({super.key});

  @override
  ListState createState() => ListState();
}

class ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    final todoElements = Provider.of<ToDo>(context).toDoList;
    return Column(
      children: <Widget>[
        for (var todo in todoElements)
          Center(
            child: Card(
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
                      onPressed: () => setState(() {
                        context.read<ToDo>().removeToDo(todo);
                      }),
                      icon: const Icon(
                        Icons.delete_outline,
                        size: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
