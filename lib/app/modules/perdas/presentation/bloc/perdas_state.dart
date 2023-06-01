part of 'perdas_bloc.dart';
enum PerdasStatus {
  initial,
  loading,
  loaded,
  error,
}
extension PerdasX on PerdasStatus {
  bool get isInitial => this == PerdasStatus.initial;
  bool get isLoading => this == PerdasStatus.loading;
  bool get isLoaded => this == PerdasStatus.loaded;
  bool get isError => this == PerdasStatus.error;
}
@freezed
class PerdasState with _$PerdasState {
  const factory PerdasState({
    @Default(PerdasStatus.initial) PerdasStatus status,
    List<Perda>? perdas,
    String? errorMessage,
  }) = _PerdasState;
}
