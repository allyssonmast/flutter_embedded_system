import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:embedded_system/app/helpers/error/login/failure.dart';
import 'package:embedded_system/app/modules/details_sensor/domain/entity/sensor.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../../helpers/constants/constants.dart';
import '../domain/entity/setor.dart';
import '../domain/repository/setor_repository.dart';

@Injectable(as: ISetorRepository)
class SensorRepository implements ISetorRepository {
  final FirebaseFirestore _store;
  final FirebaseDatabase _database;
  final http.Client client;

  SensorRepository(this._store, this.client, this._database);
  @override
  Future<Either<Failure, List<Setor>>> getAll() async {
    try {
      List<Setor> result = await _store.collection('setores').get().then(
          (value) =>
              List.from(value.docs.map((e) => Setor.fromJson(e.data()))));
      return Right(result);
    } on FirebaseException catch (_, e) {
      return Left(Failure(message: e.toString()));
    } catch (e) {
      return Left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, List<SensorEntity>>> getSensor(String id) async {
    try {
      var response = await client.get(Uri.parse(apiUrl + id.toLowerCase()));
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonList = jsonDecode(response.body);
        var list = jsonList.entries.map((entry) {
          return SensorEntity.fromJson(entry.value);
        }).toList();
        return Right(list);
      } else {
        return Left(Failure(message: response.statusCode.toString()));
      }
    } catch (e) {
      return Left(Failure.serverError());
    }
  }

  @override
  Stream getMostRecentTemperature(String id) {
    final reference =
        _database.ref().child('leitura/${id.toLowerCase()}/temperatura-2');

    final query = reference.orderByChild('timestemp').limitToLast(1);

    return query.onValue;
  }
}
