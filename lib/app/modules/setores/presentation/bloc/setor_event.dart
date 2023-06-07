part of 'setor_bloc.dart';

@freezed
class SetorEvent with _$SetorEvent {
  const factory SetorEvent.started() = _Started;
  const factory SetorEvent.loadSetores() = _LoadSetores;
  const factory SetorEvent.getSetores() = _getSetores;
  const factory SetorEvent.getSensores(String id) = _getSensores;
  const factory SetorEvent.changeSetorName(String id) =_changeSetorName;
  const factory SetorEvent.changeInitial() = _changeInitial;
}