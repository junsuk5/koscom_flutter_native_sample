import 'package:flutter/material.dart';
import 'package:flutter_native_sample/domain/repository/todo_repository.dart';
import 'package:flutter_native_sample/presentation/main/main_state.dart';

class MainViewModel with ChangeNotifier {
  final TodoRepository _repository;

  // 상태
  MainState _state = const MainState(
    todo: null,
    isLoading: false,
  );

  MainState get state => _state;

  MainViewModel(this._repository);

  void getTodo(int id) async {
    // 로딩
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    // 동작
    final todo = await _repository.getTodo(id);

    // 상태 업데이트
    _state = state.copyWith(
      todo: todo,
      isLoading: false,
    );
    notifyListeners();
  }
}
