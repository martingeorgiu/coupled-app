import 'package:coupled_app/registry.dart';
import 'package:coupled_app/services/db_service.dart';
import 'package:flutter/material.dart';

class TodosScreen extends StatefulWidget {
  const TodosScreen({Key? key}) : super(key: key);

  @override
  State<TodosScreen> createState() => _TodosScreenState();
}

class _TodosScreenState extends State<TodosScreen> {
  List<String>? todos;

  @override
  void initState() {
    super.initState();
    registry.get<DBService>().getTodos().then((e) => setState(() {
          todos = e;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todos')),
      body: Column(
        children: todos != null
            ? todos!.map((e) => Text(e)).toList()
            : [
                const CircularProgressIndicator(),
              ],
      ),
    );
  }
}
