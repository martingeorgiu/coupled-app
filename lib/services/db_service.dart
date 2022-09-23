import 'package:coupled_app/registry.dart';
import 'package:coupled_app/repositories/todo_repository.dart';
import 'package:flutter/material.dart';

class DBService {
  Future<List<String>> getTodos() async {
    final todos = await _loadTodos();
    // In a real world here would be much more complex logic
    if (todos.isEmpty) {
      return await registry.get<TodoRepository>().getTodos();
    }

    return todos;
  }

  Future<void> saveTodos(List<String> todos) async {
    debugPrint(todos.toString());
  }

  Future<List<String>> _loadTodos() async {
    return [];
  }
}
