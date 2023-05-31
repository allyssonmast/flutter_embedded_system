part of 'details_sensor_bloc.dart';

@freezed
class DetailsSensorEvent with _$DetailsSensorEvent {
  const factory DetailsSensorEvent.started() = _Started;
  const factory DetailsSensorEvent.loading() = _Loading;
  const factory DetailsSensorEvent.featData(String id,DateTime dateTime) = _Feated;
}