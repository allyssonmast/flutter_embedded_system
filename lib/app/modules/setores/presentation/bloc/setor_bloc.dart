import 'package:bloc/bloc.dart';
import 'package:embedded_system/app/modules/details_sensor/domain/entity/sensor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entity/setor.dart';
import '../../domain/usecase/getSensor.dart';
import '../../domain/usecase/getSetores.dart';
import '../../domain/usecase/getStreamSensor.dart';

part 'setor_event.dart';
part 'setor_state.dart';
part 'setor_bloc.freezed.dart';

@singleton
class SetorBloc extends Bloc<SetorEvent, SetorState> {
  final IGetSetoresUsecase _getSetoresUsecase;
  final GetSensorUsecase _getSensorUsecase;
  final GetStreamUsecase _getStreamUsecase;
  SetorBloc(
      this._getSetoresUsecase, this._getSensorUsecase, this._getStreamUsecase)
      : super(const SetorState()) {
    on<SetorEvent>((event, emit) async {
      if (event is _Started) {
        var result = await _getSetoresUsecase();
        result.fold(
          (faiulure) => emit(state.copyWith(
              status: SetorStatus.error, errorMessage: faiulure.message)),
          (setores) => emit(
            state.copyWith(
              status: SetorStatus.loaded,
              setores: setores,
            ),
          ),
        );

        emit(state.copyWith(idSetor: state.setores!.first.name));

        var resultStream = _getStreamUsecase(state.setores!.first.name);

        emit(state.copyWith(stream: resultStream));

        var result1 = await _getSensorUsecase(state.setores!.first.name);
        result1.fold(
          (faiulure) => emit(state.copyWith(
              status: SetorStatus.errorBack, errorMessage: faiulure.message)),
          (sensores) => emit(
            state.copyWith(
                idSetor: state.setores!.first.name,
                status: SetorStatus.loaded,
                listSensores: sensores),
          ),
        );
      }
      if (event is _getSensores) {
       // emit(state.copyWith(stream: null));
        //var resultStream = _getStreamUsecase(event.id);

        //emit(state.copyWith(stream: resultStream));
        /*
        var result = await _getSensorUsecase(event.id);
        result.fold(
          (faiulure) => emit(state.copyWith(
              status: SetorStatus.errorBack, errorMessage: faiulure.message)),
          (sensores) => emit(state.copyWith(
              idSetor: event.id,
              status: SetorStatus.loaded,
              listSensores: sensores)),
        );

         */
      }
      if (event is _changeInitial) {
        emit(state.copyWith(isInital: false));
      }
      if (event is _changeSetorName) {
        emit(state.copyWith(idSetor: event.id));
      }
    });
  }
}
