import 'package:coupled_app/repositories/todo_repository.dart';
import 'package:coupled_app/services/api_service.dart';
import 'package:coupled_app/services/db_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final registry = GetIt.I;

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();

  registry.registerSingleton<DBService>(DBService());
  registry.registerSingleton<APIService>(APIService());
  registry.registerSingleton<TodoRepository>(TodoRepository());
}
