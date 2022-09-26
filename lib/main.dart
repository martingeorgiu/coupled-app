import 'package:coupled_app/registry.dart';
import 'package:coupled_app/ui/todos_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  await setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coupled app',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const TodosScreen(),
    );
  }
}
