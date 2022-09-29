import 'package:flutter/material.dart';

class ToDo with ChangeNotifier {
  final List<String> _toDos = [];

  List<String> get toDoList => _toDos;

  void addToDo(String todo) {
    _toDos.add(todo);
    notifyListeners();
  }

  void removeToDo(String todo) {
    _toDos.removeWhere((element) => element == todo);
    notifyListeners();
  }
}
