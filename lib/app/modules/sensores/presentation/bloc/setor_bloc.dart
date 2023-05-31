import 'package:bloc/bloc.dart';
import 'package:embedded_system/app/modules/sensores/domain/entity/setor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecase/getSetores.dart';

part 'setor_event.dart';
part 'setor_state.dart';
part 'setor_bloc.freezed.dart';

@injectable
class SetorBloc extends Bloc<SetorEvent, SetorState> {
  final IGetSetoresUsecase _getSetoresUsecase;
  SetorBloc(this._getSetoresUsecase) : super(const SetorState()) {
    on<SetorEvent>((event, emit) async {
      if (event is _Started) {
        var result = await _getSetoresUsecase();
        result.fold(
          (faiulure) => emit(state.copyWith(
              status: SetorStatus.error, errorMessage: faiulure.message)),
          (setores) => emit(state.copyWith(
            status: SetorStatus.loaded,
            setores: setores,
          )),
        );
      }
    });
  }
}
