import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_native_sample/domain/model/todo.dart';
import 'package:flutter_native_sample/domain/repository/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  static const _channel = MethodChannel("survivalcoding.com/todo");

  @override
  Future<Todo> getTodo(int id) async {
    final response = await _channel.invokeMethod<String>("getTodo", {'id': id});
    final json = jsonDecode(response!);
    return Todo.fromJson(json);
  }

}