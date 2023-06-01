import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:embedded_system/app/helpers/error/login/failure.dart';
import 'package:embedded_system/app/modules/perdas/domain/entity/perda.dart';
import 'package:embedded_system/app/modules/perdas/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@Injectable(as: PerdasRepository)
class PerdaRepositoryImp implements PerdasRepository {
  final FirebaseFirestore _firestore;

  PerdaRepositoryImp(this._firestore);
  @override
  Query<Perda> getAll() {
    var result = _firestore.collection('perdas').withConverter<Perda>(
          fromFirestore: ((snapshot, options) {
            return Perda.fromJson(snapshot.data()!).copyWith(
              id: snapshot.id,
            );
          }),
          toFirestore: (value, _) => value.toJson(),
        );
    return result;
  }

  @override
  Future<Either<Failure, void>> setPerda(Perda perda) async {
    void returno() {}
    try {
      var map = perda.toJson();
      map['dateTime']=DateFormat('yyyy-MM-dd').format(perda.dateTime);
      await _firestore.collection('perdas').add(map);
      return Right(returno());
    } on FirebaseException catch (_, e) {
      return Left(Failure(message: e.toString()));
    } catch (e) {
      return Left(Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, void>> deletePerda(Perda perda) {
    // TODO: implement deletePerda
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> updatePerda(Perda perda) {
    // TODO: implement updatePerda
    throw UnimplementedError();
  }
}
