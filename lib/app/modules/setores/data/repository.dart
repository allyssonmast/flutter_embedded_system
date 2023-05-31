import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:embedded_system/app/helpers/error/login/failure.dart';
import 'package:injectable/injectable.dart';

import '../domain/entity/setor.dart';
import '../domain/repository/setor_repository.dart';

@Injectable(as: ISetorRepository)
class SensorRepository implements ISetorRepository {
  final FirebaseFirestore _store;

  SensorRepository(this._store);
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
}
