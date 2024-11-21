import 'dart:async';
import 'dart:math';

import 'package:flutter_native_sample/domain/repository/sensor_repository.dart';

class MockSensorRepositoryImpl implements SensorRepository {
  final _random = Random();
  late StreamController<(double, double, double)> _streamController;

  @override
  Stream<(double, double, double)> sensorEventStream() {
    _streamController = StreamController<(double, double, double)>.broadcast();

    Timer.periodic(const Duration(seconds: 1), (_) {
      final randomValues = (
      _random.nextDouble() * 10,  // x 값
      _random.nextDouble() * 10,  // y 값
      _random.nextDouble() * 10   // z 값
      );
      _streamController.add(randomValues);
    });

    return _streamController.stream;
  }

}