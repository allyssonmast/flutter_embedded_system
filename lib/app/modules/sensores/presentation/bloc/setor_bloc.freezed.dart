// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SetorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadSetores,
    required TResult Function() getSetores,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadSetores,
    TResult? Function()? getSetores,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadSetores,
    TResult Function()? getSetores,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadSetores value) loadSetores,
    required TResult Function(_getSetores value) getSetores,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadSetores value)? loadSetores,
    TResult? Function(_getSetores value)? getSetores,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadSetores value)? loadSetores,
    TResult Function(_getSetores value)? getSetores,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetorEventCopyWith<$Res> {
  factory $SetorEventCopyWith(
          SetorEvent value, $Res Function(SetorEvent) then) =
      _$SetorEventCopyWithImpl<$Res, SetorEvent>;
}

/// @nodoc
class _$SetorEventCopyWithImpl<$Res, $Val extends SetorEvent>
    implements $SetorEventCopyWith<$Res> {
  _$SetorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$SetorEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'SetorEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadSetores,
    required TResult Function() getSetores,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadSetores,
    TResult? Function()? getSetores,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadSetores,
    TResult Function()? getSetores,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadSetores value) loadSetores,
    required TResult Function(_getSetores value) getSetores,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadSetores value)? loadSetores,
    TResult? Function(_getSetores value)? getSetores,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadSetores value)? loadSetores,
    TResult Function(_getSetores value)? getSetores,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SetorEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_LoadSetoresCopyWith<$Res> {
  factory _$$_LoadSetoresCopyWith(
          _$_LoadSetores value, $Res Function(_$_LoadSetores) then) =
      __$$_LoadSetoresCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadSetoresCopyWithImpl<$Res>
    extends _$SetorEventCopyWithImpl<$Res, _$_LoadSetores>
    implements _$$_LoadSetoresCopyWith<$Res> {
  __$$_LoadSetoresCopyWithImpl(
      _$_LoadSetores _value, $Res Function(_$_LoadSetores) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadSetores implements _LoadSetores {
  const _$_LoadSetores();

  @override
  String toString() {
    return 'SetorEvent.loadSetores()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadSetores);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadSetores,
    required TResult Function() getSetores,
  }) {
    return loadSetores();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadSetores,
    TResult? Function()? getSetores,
  }) {
    return loadSetores?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadSetores,
    TResult Function()? getSetores,
    required TResult orElse(),
  }) {
    if (loadSetores != null) {
      return loadSetores();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadSetores value) loadSetores,
    required TResult Function(_getSetores value) getSetores,
  }) {
    return loadSetores(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadSetores value)? loadSetores,
    TResult? Function(_getSetores value)? getSetores,
  }) {
    return loadSetores?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadSetores value)? loadSetores,
    TResult Function(_getSetores value)? getSetores,
    required TResult orElse(),
  }) {
    if (loadSetores != null) {
      return loadSetores(this);
    }
    return orElse();
  }
}

abstract class _LoadSetores implements SetorEvent {
  const factory _LoadSetores() = _$_LoadSetores;
}

/// @nodoc
abstract class _$$_getSetoresCopyWith<$Res> {
  factory _$$_getSetoresCopyWith(
          _$_getSetores value, $Res Function(_$_getSetores) then) =
      __$$_getSetoresCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_getSetoresCopyWithImpl<$Res>
    extends _$SetorEventCopyWithImpl<$Res, _$_getSetores>
    implements _$$_getSetoresCopyWith<$Res> {
  __$$_getSetoresCopyWithImpl(
      _$_getSetores _value, $Res Function(_$_getSetores) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_getSetores implements _getSetores {
  const _$_getSetores();

  @override
  String toString() {
    return 'SetorEvent.getSetores()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_getSetores);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadSetores,
    required TResult Function() getSetores,
  }) {
    return getSetores();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadSetores,
    TResult? Function()? getSetores,
  }) {
    return getSetores?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadSetores,
    TResult Function()? getSetores,
    required TResult orElse(),
  }) {
    if (getSetores != null) {
      return getSetores();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadSetores value) loadSetores,
    required TResult Function(_getSetores value) getSetores,
  }) {
    return getSetores(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadSetores value)? loadSetores,
    TResult? Function(_getSetores value)? getSetores,
  }) {
    return getSetores?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadSetores value)? loadSetores,
    TResult Function(_getSetores value)? getSetores,
    required TResult orElse(),
  }) {
    if (getSetores != null) {
      return getSetores(this);
    }
    return orElse();
  }
}

abstract class _getSetores implements SetorEvent {
  const factory _getSetores() = _$_getSetores;
}

/// @nodoc
mixin _$SetorState {
  SetorStatus get status => throw _privateConstructorUsedError;
  List<Setor>? get setores => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetorStateCopyWith<SetorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetorStateCopyWith<$Res> {
  factory $SetorStateCopyWith(
          SetorState value, $Res Function(SetorState) then) =
      _$SetorStateCopyWithImpl<$Res, SetorState>;
  @useResult
  $Res call({SetorStatus status, List<Setor>? setores, String? errorMessage});
}

/// @nodoc
class _$SetorStateCopyWithImpl<$Res, $Val extends SetorState>
    implements $SetorStateCopyWith<$Res> {
  _$SetorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? setores = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SetorStatus,
      setores: freezed == setores
          ? _value.setores
          : setores // ignore: cast_nullable_to_non_nullable
              as List<Setor>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SetorStateCopyWith<$Res>
    implements $SetorStateCopyWith<$Res> {
  factory _$$_SetorStateCopyWith(
          _$_SetorState value, $Res Function(_$_SetorState) then) =
      __$$_SetorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SetorStatus status, List<Setor>? setores, String? errorMessage});
}

/// @nodoc
class __$$_SetorStateCopyWithImpl<$Res>
    extends _$SetorStateCopyWithImpl<$Res, _$_SetorState>
    implements _$$_SetorStateCopyWith<$Res> {
  __$$_SetorStateCopyWithImpl(
      _$_SetorState _value, $Res Function(_$_SetorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? setores = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_SetorState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SetorStatus,
      setores: freezed == setores
          ? _value._setores
          : setores // ignore: cast_nullable_to_non_nullable
              as List<Setor>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SetorState implements _SetorState {
  const _$_SetorState(
      {this.status = SetorStatus.initial,
      final List<Setor>? setores,
      this.errorMessage})
      : _setores = setores;

  @override
  @JsonKey()
  final SetorStatus status;
  final List<Setor>? _setores;
  @override
  List<Setor>? get setores {
    final value = _setores;
    if (value == null) return null;
    if (_setores is EqualUnmodifiableListView) return _setores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SetorState(status: $status, setores: $setores, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetorState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._setores, _setores) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_setores), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetorStateCopyWith<_$_SetorState> get copyWith =>
      __$$_SetorStateCopyWithImpl<_$_SetorState>(this, _$identity);
}

abstract class _SetorState implements SetorState {
  const factory _SetorState(
      {final SetorStatus status,
      final List<Setor>? setores,
      final String? errorMessage}) = _$_SetorState;

  @override
  SetorStatus get status;
  @override
  List<Setor>? get setores;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_SetorStateCopyWith<_$_SetorState> get copyWith =>
      throw _privateConstructorUsedError;
}
