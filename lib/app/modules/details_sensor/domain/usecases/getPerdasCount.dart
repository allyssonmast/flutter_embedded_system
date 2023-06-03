import 'package:dartz/dartz.dart';
import 'package:embedded_system/app/helpers/error/login/failure.dart';
import 'package:embedded_system/app/modules/historico_sensores/domain/entity/perda.dart';
import 'package:injectable/injectable.dart';

import '../repository/repository.dart';

abstract class GetPerdasCountUseCase {
  Future<Either<Failure, Perda?>> call(DateTime dateTime);
}

@Injectable(as: GetPerdasCountUseCase)
class GetPerdasCountUseCaseImp implements GetPerdasCountUseCase {
  final ISensorRepository _repository;

  GetPerdasCountUseCaseImp(this._repository);
  @override
  Future<Either<Failure, Perda?>> call(DateTime dateTime) async {
    return await _repository.getPerdasCount(dateTime);
  }
}
