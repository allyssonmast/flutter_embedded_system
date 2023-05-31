part of 'setor_bloc.dart';

enum SetorStatus {
  initial,
  loading,
  loaded,
  error,
}

extension SetorStatusX on SetorStatus {
  bool get isInitial => this == SetorStatus.initial;
  bool get isLoading => this == SetorStatus.loading;
  bool get isLoaded => this == SetorStatus.loaded;
  bool get isError => this == SetorStatus.error;
}
@freezed
class SetorState with _$SetorState {
  const factory SetorState({
    @Default(SetorStatus.initial) SetorStatus status,
    List<Setor>? setores,
    String? errorMessage,
  }) = _SetorState;
}
