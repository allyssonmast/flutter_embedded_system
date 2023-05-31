import 'package:dartz/dartz.dart';
import 'package:embedded_system/app/helpers/error/login/failure.dart';
import 'package:embedded_system/app/modules/details_sensor/domain/entity/sensor.dart';
import 'package:embedded_system/app/modules/details_sensor/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

abstract class IGetSensor {
  Future<Either<Failure, List<SensorEntity>>> call(String id,DateTime dateTime);
}

@Injectable(as: IGetSensor)
class GetSensor implements IGetSensor {
  final ISensorRepository _repository;

  GetSensor(this._repository);
  @override
  Future<Either<Failure, List<SensorEntity>>> call(String id,DateTime dateTime) async {
    var dateFormat = DateFormat('yyyy-MM-dd');
    return await _repository.getSensor(id,dateFormat.format(dateTime));
  }
}
