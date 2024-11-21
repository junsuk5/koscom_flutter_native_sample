import 'package:flutter/material.dart';
import 'package:flutter_native_sample/domain/repository/sensor_repository.dart';
import 'package:flutter_native_sample/domain/repository/todo_repository.dart';
import 'package:flutter_native_sample/presentation/main/main_state.dart';

class MainViewModel with ChangeNotifier {
  final TodoRepository _todoRepository;
  final SensorRepository _sensorRepository;

  // 상태
  MainState _state = const MainState();

  MainState get state => _state;

  MainViewModel(
    this._todoRepository,
    this._sensorRepository,
  ) {
    startSensing();
  }

  void startSensing() {
    _sensorRepository.sensorEventStream().listen((values) {
      _state = state.copyWith(values: values);
      notifyListeners();
    });
  }

  void stopSensing() {}

  void getTodo(int id) async {
    // 로딩
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    // 동작
    final todo = await _todoRepository.getTodo(id);

    // 상태 업데이트
    _state = state.copyWith(
      todo: todo,
      isLoading: false,
    );
    notifyListeners();
  }
}
