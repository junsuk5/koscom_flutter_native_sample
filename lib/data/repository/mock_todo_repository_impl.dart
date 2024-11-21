import 'package:flutter_native_sample/domain/model/todo.dart';
import 'package:flutter_native_sample/domain/repository/todo_repository.dart';

class MockTodoRepositoryImpl implements TodoRepository {
  @override
  Future<Todo> getTodo(int id) async {
    await Future.delayed(const Duration(seconds: 1));
    return Todo.fromJson({
      "userId": 1,
      "id": 1,
      "title": "delectus aut autem",
      "completed": false
    });
  }
}
