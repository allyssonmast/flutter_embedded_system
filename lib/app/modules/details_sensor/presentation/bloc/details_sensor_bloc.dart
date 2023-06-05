import 'package:bloc/bloc.dart';
import 'package:embedded_system/app/modules/details_sensor/domain/entity/sensor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecases/getSensor_usecase.dart';

part 'details_sensor_event.dart';
part 'details_sensor_state.dart';
part 'details_sensor_bloc.freezed.dart';

@injectable
class DetailsSensorBloc extends Bloc<DetailsSensorEvent, DetailsSensorState> {
  final IGetSensor _getSensor;
  DetailsSensorBloc(this._getSensor,)
      : super(const DetailsSensorState()) {
    on<DetailsSensorEvent>((event, emit) async {
      if (event is _Feated) {
        var id = event.id;
        var data = event.dateTime;
        var result = await _getSensor(id, data);
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
