part of 'perdas_bloc.dart';

@freezed
class PerdasEvent with _$PerdasEvent {
  const factory PerdasEvent.started() = _Started;
  const factory PerdasEvent.loading() = _Loading;
  const factory PerdasEvent.featData(Perda perda) = _Feated;
}