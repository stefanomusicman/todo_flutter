import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/todo_provider.dart';
import './Card.dart';

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
            child: CustomCard(todo: todo),
          ),
      ],
    );
  }
}
