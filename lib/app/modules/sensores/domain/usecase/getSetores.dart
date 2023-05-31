import 'package:dartz/dartz.dart';
import 'package:embedded_system/app/helpers/error/login/failure.dart';
import 'package:embedded_system/app/modules/sensores/domain/entity/setor.dart';
import 'package:embedded_system/app/modules/sensores/domain/repository/setor_repository.dart';
import 'package:injectable/injectable.dart';

abstract class IGetSetoresUsecase {
  Future<Either<Failure, List<Setor>>> call();
}

@Injectable(as: IGetSetoresUsecase)
class GetSetoresUsecase implements IGetSetoresUsecase {
  final ISetorRepository _repository;

  GetSetoresUsecase(this._repository);

  @override
  Future<Either<Failure, List<Setor>>> call() async {
    return await _repository.getAll();
  }
}
