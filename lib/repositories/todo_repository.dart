import 'package:coupled_app/services/api_service.dart';
import 'package:coupled_app/registry.dart';
import 'package:coupled_app/services/db_service.dart';

class TodoRepository {
  final _apiService = registry.get<APIService>();
  final _dbService = registry.get<DBService>();

  Future<List<String>> getTodos() async {
    final todos = await _apiService.getTodos();
    await saveTodos(todos);
    return todos;
  }

  Future<void> saveTodos(List<String> todos) async {
    await _dbService.saveTodos(todos);
  }
}
