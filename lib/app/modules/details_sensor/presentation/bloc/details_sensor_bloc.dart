import 'package:bloc/bloc.dart';
import 'package:embedded_system/app/modules/details_sensor/domain/entity/sensor.dart';
import 'package:embedded_system/app/modules/perdas/domain/entity/perda.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecases/getPerdasCount.dart';
import '../../domain/usecases/getSensor_usecase.dart';

part 'details_sensor_event.dart';
part 'details_sensor_state.dart';
part 'details_sensor_bloc.freezed.dart';

@lazySingleton
class DetailsSensorBloc extends Bloc<DetailsSensorEvent, DetailsSensorState> {
  final IGetSensor _getSensor;
  final GetPerdasCountUseCase _countUseCase;
  DetailsSensorBloc(this._getSensor, this._countUseCase)
      : super(const DetailsSensorState()) {
    on<DetailsSensorEvent>((event, emit) async {
      if (event is _Feated) {
        var id = event.id;
        var data = event.dateTime;
        var result = await _getSensor(id, data);
        var resultPerdas = await _countUseCase(data);
        resultPerdas.fold(
          (faiulure) => emit(state.copyWith(
              status: DetailsSensorStatus.error,perda: null,
              errorMessage: faiulure.message)),
          (sucess) => emit(state.copyWith(
            perda: sucess,
          )),
        );
        result.fold(
          (faiulure) => emit(state.copyWith(
              status: DetailsSensorStatus.error,
              errorMessage: faiulure.message)),
          (sensores) => emit(state.copyWith(
            status: DetailsSensorStatus.loaded,
            sensores: sensores,
          )),
        );
      }
    });
  }
}
