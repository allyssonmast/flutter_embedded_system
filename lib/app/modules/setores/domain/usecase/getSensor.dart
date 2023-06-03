import 'package:dartz/dartz.dart';
import 'package:embedded_system/app/helpers/error/login/failure.dart';
import 'package:embedded_system/app/modules/details_sensor/domain/entity/sensor.dart';
import 'package:embedded_system/app/modules/setores/domain/repository/setor_repository.dart';
import 'package:injectable/injectable.dart';

abstract class GetSensorUsecase {
  Future<Either<Failure,List<SensorEntity>>> call(String id);
}

@Injectable(as: GetSensorUsecase)
class GetSensorUsecaseImp implements GetSensorUsecase{
  final ISetorRepository _repository;

  GetSensorUsecaseImp(this._repository);
  @override
  Future<Either<Failure, List<SensorEntity>>> call(String id) async {
   return await _repository.getSensor(id);
  }

}