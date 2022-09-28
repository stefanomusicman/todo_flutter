import 'package:flutter/material.dart';

class ToDo with ChangeNotifier {
  List<String> toDos = [];

  List get todoList => toDos;

  void addToDo(String todo) {
    toDos.add(todo);
  }

  void removeToDo(String todo) {
    toDos.removeWhere((element) => element == todo);
  }
}
