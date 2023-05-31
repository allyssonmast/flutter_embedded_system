import 'package:dartz/dartz.dart';
import 'package:embedded_system/app/helpers/error/login/failure.dart';
import 'package:embedded_system/app/modules/details_sensor/domain/entity/sensor.dart';

abstract class ISensorRepository {
  Future<Either<Failure, List<SensorEntity>>> getSensor(String id,String dateTime);
}
