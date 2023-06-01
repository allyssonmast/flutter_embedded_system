import 'package:dartz/dartz.dart';
import 'package:embedded_system/app/helpers/error/login/failure.dart';
import 'package:embedded_system/app/modules/perdas/domain/entity/perda.dart';
import 'package:embedded_system/app/modules/perdas/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

abstract class SetLoserUseCase {
  Future<Either<Failure, void>> call(Perda perda);
}

@Injectable(as: SetLoserUseCase)
class SetLoserUseCaseImp implements SetLoserUseCase {
  final PerdasRepository _repository;

  SetLoserUseCaseImp(this._repository);
  @override
  Future<Either<Failure, void>> call(Perda perda) async {
    return await _repository.setPerda(perda);
  }
}
