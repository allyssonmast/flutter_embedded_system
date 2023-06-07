import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:embedded_system/app/helpers/error/login/failure.dart';
import 'package:embedded_system/app/modules/details_sensor/domain/entity/sensor.dart';
import 'package:embedded_system/app/modules/details_sensor/domain/repository/repository.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ISensorRepository)
class SensorRepository implements ISensorRepository {
  final FirebaseDatabase _database;

  SensorRepository(
    this._database,
  );
  @override
  Future<Either<Failure, List<SensorEntity>>> getSensor(
      String id, String dateTime) async {
    String startDateTime = '$dateTime 00:00:00.000000';
    String endDateTime = '$dateTime 23:59:59.999999';
    List<SensorEntity> result = await _database
        .ref('leitura/$id')
        .orderByChild('timestemp')
        .startAt(startDateTime)
        .endAt(endDateTime)
        .once()
        .then(
          (value) => value.snapshot.exists
              ? List.from(
                  value.snapshot.children.map(
                    (e) =>
                        SensorEntity.fromJson(jsonDecode(jsonEncode(e.value))),
                  ),
                )
              : [],
        );
    return Right(result);
  }
}
