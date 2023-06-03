import 'package:dartz/dartz.dart';
import 'package:embedded_system/app/helpers/error/login/failure.dart';
import 'package:embedded_system/app/modules/details_sensor/domain/entity/sensor.dart';

import '../entity/setor.dart';

abstract class ISetorRepository{
  Future<Either<Failure,List<Setor>>> getAll();
  Future<Either<Failure,List<SensorEntity>>> getSensor(String id);
}