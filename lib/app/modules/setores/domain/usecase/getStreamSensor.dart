import 'package:embedded_system/app/modules/setores/domain/repository/setor_repository.dart';
import 'package:injectable/injectable.dart';

abstract class GetStreamUsecase {
  Stream call(String id);
}

@Injectable(as: GetStreamUsecase)
class GetStreamUsecaseImp implements GetStreamUsecase {
  final ISetorRepository _repository;

  GetStreamUsecaseImp(this._repository);
  @override
  Stream call(String id) {
    return _repository.getMostRecentTemperature(id);
  }
}
