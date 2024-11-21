abstract interface class SensorRepository {
  Stream<(double, double, double)> sensorEventStream();
}