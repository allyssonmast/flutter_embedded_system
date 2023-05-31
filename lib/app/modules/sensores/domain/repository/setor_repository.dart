import 'package:dartz/dartz.dart';
import 'package:embedded_system/app/helpers/error/login/failure.dart';
import 'package:embedded_system/app/modules/sensores/domain/entity/setor.dart';

abstract class ISetorRepository{
  Future<Either<Failure,List<Setor>>> getAll();
}