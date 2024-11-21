import 'package:flutter/material.dart';
import 'package:flutter_native_sample/domain/repository/todo_repository.dart';

class MainViewModel with ChangeNotifier {
  final TodoRepository _repository;

  // 상태

  MainViewModel(this._repository);

  void getTodo(int id) async {
    // 동작
    final todo = await _repository.getTodo(id);

    // 상태 업데이트

  }
}