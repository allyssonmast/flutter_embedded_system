import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:embedded_system/app/helpers/error/login/failure.dart';
import 'package:embedded_system/app/modules/historico_sensores/domain/entity/perda.dart';

abstract class PerdasRepository{
  Query<Perda> getAll();
  Future<Either<Failure,void>> setPerda(Perda perda);
  Future<Either<Failure,void>> updatePerda(Perda perda);
  Future<Either<Failure,void>> deletePerda(Perda perda);
}