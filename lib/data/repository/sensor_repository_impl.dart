import 'package:flutter_native_sample/domain/repository/sensor_repository.dart';
import 'package:sensors_plus/sensors_plus.dart';

class SensorRepositoryImpl implements SensorRepository {
  @override
  Stream<(double, double, double)> sensorEventStream() {
    return gyroscopeEventStream()
        .map((event) => (event.x, event.y, event.z));
  }
}
