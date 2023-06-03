import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:embedded_system/app/modules/historico_sensores/domain/entity/perda.dart';
import 'package:injectable/injectable.dart';

import '../repository/repository.dart';

abstract class GetAllLosers {
  Query<Perda> call();
}

@Injectable(as: GetAllLosers)
class GetAllLosersImp implements GetAllLosers {
  final PerdasRepository _repository;

  GetAllLosersImp(this._repository);
  @override
  Query<Perda> call() {
    return _repository.getAll();
  }
}
