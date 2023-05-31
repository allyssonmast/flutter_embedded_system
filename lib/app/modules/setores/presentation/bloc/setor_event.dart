part of 'setor_bloc.dart';

@freezed
class SetorEvent with _$SetorEvent {
  const factory SetorEvent.started() = _Started;
  const factory SetorEvent.loadSetores() = _LoadSetores;
  const factory SetorEvent.getSetores() = _getSetores;
}