// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'perdas_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PerdasEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function(Perda perda) featData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loading,
    TResult? Function(Perda perda)? featData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function(Perda perda)? featData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Feated value) featData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Feated value)? featData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loading value)? loading,
    TResult Function(_Feated value)? featData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerdasEventCopyWith<$Res> {
  factory $PerdasEventCopyWith(
          PerdasEvent value, $Res Function(PerdasEvent) then) =
      _$PerdasEventCopyWithImpl<$Res, PerdasEvent>;
}

/// @nodoc
class _$PerdasEventCopyWithImpl<$Res, $Val extends PerdasEvent>
    implements $PerdasEventCopyWith<$Res> {
  _$PerdasEventCopyWithImpl(this._value, this._then);

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
    extends _$PerdasEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'PerdasEvent.started()';
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
    required TResult Function() loading,
    required TResult Function(Perda perda) featData,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loading,
    TResult? Function(Perda perda)? featData,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function(Perda perda)? featData,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Feated value) featData,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Feated value)? featData,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loading value)? loading,
    TResult Function(_Feated value)? featData,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PerdasEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$PerdasEventCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'PerdasEvent.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function(Perda perda) featData,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loading,
    TResult? Function(Perda perda)? featData,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function(Perda perda)? featData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Feated value) featData,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Feated value)? featData,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loading value)? loading,
    TResult Function(_Feated value)? featData,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PerdasEvent {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_FeatedCopyWith<$Res> {
  factory _$$_FeatedCopyWith(_$_Feated value, $Res Function(_$_Feated) then) =
      __$$_FeatedCopyWithImpl<$Res>;
  @useResult
  $Res call({Perda perda});

  $PerdaCopyWith<$Res> get perda;
}

/// @nodoc
class __$$_FeatedCopyWithImpl<$Res>
    extends _$PerdasEventCopyWithImpl<$Res, _$_Feated>
    implements _$$_FeatedCopyWith<$Res> {
  __$$_FeatedCopyWithImpl(_$_Feated _value, $Res Function(_$_Feated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? perda = null,
  }) {
    return _then(_$_Feated(
      null == perda
          ? _value.perda
          : perda // ignore: cast_nullable_to_non_nullable
              as Perda,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PerdaCopyWith<$Res> get perda {
    return $PerdaCopyWith<$Res>(_value.perda, (value) {
      return _then(_value.copyWith(perda: value));
    });
  }
}

/// @nodoc

class _$_Feated implements _Feated {
  const _$_Feated(this.perda);

  @override
  final Perda perda;

  @override
  String toString() {
    return 'PerdasEvent.featData(perda: $perda)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Feated &&
            (identical(other.perda, perda) || other.perda == perda));
  }

  @override
  int get hashCode => Object.hash(runtimeType, perda);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeatedCopyWith<_$_Feated> get copyWith =>
      __$$_FeatedCopyWithImpl<_$_Feated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function(Perda perda) featData,
  }) {
    return featData(perda);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loading,
    TResult? Function(Perda perda)? featData,
  }) {
    return featData?.call(perda);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function(Perda perda)? featData,
    required TResult orElse(),
  }) {
    if (featData != null) {
      return featData(perda);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Feated value) featData,
  }) {
    return featData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Feated value)? featData,
  }) {
    return featData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Loading value)? loading,
    TResult Function(_Feated value)? featData,
    required TResult orElse(),
  }) {
    if (featData != null) {
      return featData(this);
    }
    return orElse();
  }
}

abstract class _Feated implements PerdasEvent {
  const factory _Feated(final Perda perda) = _$_Feated;

  Perda get perda;
  @JsonKey(ignore: true)
  _$$_FeatedCopyWith<_$_Feated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PerdasState {
  PerdasStatus get status => throw _privateConstructorUsedError;
  List<Perda>? get perdas => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PerdasStateCopyWith<PerdasState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerdasStateCopyWith<$Res> {
  factory $PerdasStateCopyWith(
          PerdasState value, $Res Function(PerdasState) then) =
      _$PerdasStateCopyWithImpl<$Res, PerdasState>;
  @useResult
  $Res call({PerdasStatus status, List<Perda>? perdas, String? errorMessage});
}

/// @nodoc
class _$PerdasStateCopyWithImpl<$Res, $Val extends PerdasState>
    implements $PerdasStateCopyWith<$Res> {
  _$PerdasStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? perdas = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PerdasStatus,
      perdas: freezed == perdas
          ? _value.perdas
          : perdas // ignore: cast_nullable_to_non_nullable
              as List<Perda>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PerdasStateCopyWith<$Res>
    implements $PerdasStateCopyWith<$Res> {
  factory _$$_PerdasStateCopyWith(
          _$_PerdasState value, $Res Function(_$_PerdasState) then) =
      __$$_PerdasStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PerdasStatus status, List<Perda>? perdas, String? errorMessage});
}

/// @nodoc
class __$$_PerdasStateCopyWithImpl<$Res>
    extends _$PerdasStateCopyWithImpl<$Res, _$_PerdasState>
    implements _$$_PerdasStateCopyWith<$Res> {
  __$$_PerdasStateCopyWithImpl(
      _$_PerdasState _value, $Res Function(_$_PerdasState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? perdas = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_PerdasState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PerdasStatus,
      perdas: freezed == perdas
          ? _value._perdas
          : perdas // ignore: cast_nullable_to_non_nullable
              as List<Perda>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PerdasState implements _PerdasState {
  const _$_PerdasState(
      {this.status = PerdasStatus.initial,
      final List<Perda>? perdas,
      this.errorMessage})
      : _perdas = perdas;

  @override
  @JsonKey()
  final PerdasStatus status;
  final List<Perda>? _perdas;
  @override
  List<Perda>? get perdas {
    final value = _perdas;
    if (value == null) return null;
    if (_perdas is EqualUnmodifiableListView) return _perdas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PerdasState(status: $status, perdas: $perdas, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PerdasState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._perdas, _perdas) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_perdas), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PerdasStateCopyWith<_$_PerdasState> get copyWith =>
      __$$_PerdasStateCopyWithImpl<_$_PerdasState>(this, _$identity);
}

abstract class _PerdasState implements PerdasState {
  const factory _PerdasState(
      {final PerdasStatus status,
      final List<Perda>? perdas,
      final String? errorMessage}) = _$_PerdasState;

  @override
  PerdasStatus get status;
  @override
  List<Perda>? get perdas;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_PerdasStateCopyWith<_$_PerdasState> get copyWith =>
      throw _privateConstructorUsedError;
}
