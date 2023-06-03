import 'package:bloc/bloc.dart';
import 'package:embedded_system/app/modules/historico_sensores/domain/entity/perda.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecase/set_loser_usecase.dart';

part 'perdas_event.dart';
part 'perdas_state.dart';
part 'perdas_bloc.freezed.dart';

@lazySingleton
class PerdasBloc extends Bloc<PerdasEvent, PerdasState> {
  final SetLoserUseCase setLoserUseCase;
  PerdasBloc(this.setLoserUseCase) : super(const PerdasState()) {
    on<PerdasEvent>((event, emit) async {
      if (event is _Feated) {
        var result = await setLoserUseCase(event.perda);
        result.fold(
          (faiulure) => emit(state.copyWith(
              status: PerdasStatus.error, errorMessage: faiulure.message)),
          (succe) => emit(state.copyWith(
            status: PerdasStatus.loaded,
          )),
        );
      }
    });
  }
}
