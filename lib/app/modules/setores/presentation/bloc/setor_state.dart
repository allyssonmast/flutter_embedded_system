part of 'setor_bloc.dart';

enum SetorStatus {
  initial,
  loading,
  loaded,
  error,
  errorBack,
}

extension SetorStatusX on SetorStatus {
  bool get isInitial => this == SetorStatus.initial;
  bool get isLoading => this == SetorStatus.loading;
  bool get isLoaded => this == SetorStatus.loaded;
  bool get isError => this == SetorStatus.error;
  bool get isErrorBack => this == SetorStatus.errorBack;
}
@freezed
class SetorState with _$SetorState {
  const factory SetorState({
    @Default(SetorStatus.initial) SetorStatus status,
    List<Setor>? setores,
    @Default([])
    List<SensorEntity> listSensores,
    String? errorMessage,
    String? idSetor,
    @Default(true)
    bool isInital,
  }) = _SetorState;
}
