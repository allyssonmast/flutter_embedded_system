part of 'details_sensor_bloc.dart';

enum DetailsSensorStatus {
  initial,
  loading,
  loaded,
  error,
}
extension DetailsSensorX on DetailsSensorStatus {
  bool get isInitial => this == DetailsSensorStatus.initial;
  bool get isLoading => this == DetailsSensorStatus.loading;
  bool get isLoaded => this == DetailsSensorStatus.loaded;
  bool get isError => this == DetailsSensorStatus.error;
}
@freezed
class DetailsSensorState with _$DetailsSensorState {
  const factory DetailsSensorState({
    @Default(DetailsSensorStatus.initial) DetailsSensorStatus status,
    List<SensorEntity>? sensores,
    Perda? perda,
    String? errorMessage,
  }) = _DetailsSensorState;
}
