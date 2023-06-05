// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_sensor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailsSensorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function(String id, DateTime dateTime) featData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loading,
    TResult? Function(String id, DateTime dateTime)? featData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function(String id, DateTime dateTime)? featData,
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
abstract class $DetailsSensorEventCopyWith<$Res> {
  factory $DetailsSensorEventCopyWith(
          DetailsSensorEvent value, $Res Function(DetailsSensorEvent) then) =
      _$DetailsSensorEventCopyWithImpl<$Res, DetailsSensorEvent>;
}

/// @nodoc
class _$DetailsSensorEventCopyWithImpl<$Res, $Val extends DetailsSensorEvent>
    implements $DetailsSensorEventCopyWith<$Res> {
  _$DetailsSensorEventCopyWithImpl(this._value, this._then);

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
    extends _$DetailsSensorEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'DetailsSensorEvent.started()';
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
    required TResult Function(String id, DateTime dateTime) featData,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loading,
    TResult? Function(String id, DateTime dateTime)? featData,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function(String id, DateTime dateTime)? featData,
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

abstract class _Started implements DetailsSensorEvent {
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
    extends _$DetailsSensorEventCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'DetailsSensorEvent.loading()';
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
    required TResult Function(String id, DateTime dateTime) featData,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loading,
    TResult? Function(String id, DateTime dateTime)? featData,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function(String id, DateTime dateTime)? featData,
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

abstract class _Loading implements DetailsSensorEvent {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_FeatedCopyWith<$Res> {
  factory _$$_FeatedCopyWith(_$_Feated value, $Res Function(_$_Feated) then) =
      __$$_FeatedCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, DateTime dateTime});
}

/// @nodoc
class __$$_FeatedCopyWithImpl<$Res>
    extends _$DetailsSensorEventCopyWithImpl<$Res, _$_Feated>
    implements _$$_FeatedCopyWith<$Res> {
  __$$_FeatedCopyWithImpl(_$_Feated _value, $Res Function(_$_Feated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateTime = null,
  }) {
    return _then(_$_Feated(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Feated implements _Feated {
  const _$_Feated(this.id, this.dateTime);

  @override
  final String id;
  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'DetailsSensorEvent.featData(id: $id, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Feated &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, dateTime);

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
    required TResult Function(String id, DateTime dateTime) featData,
  }) {
    return featData(id, dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loading,
    TResult? Function(String id, DateTime dateTime)? featData,
  }) {
    return featData?.call(id, dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function(String id, DateTime dateTime)? featData,
    required TResult orElse(),
  }) {
    if (featData != null) {
      return featData(id, dateTime);
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

abstract class _Feated implements DetailsSensorEvent {
  const factory _Feated(final String id, final DateTime dateTime) = _$_Feated;

  String get id;
  DateTime get dateTime;
  @JsonKey(ignore: true)
  _$$_FeatedCopyWith<_$_Feated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailsSensorState {
  DetailsSensorStatus get status => throw _privateConstructorUsedError;
  List<SensorEntity>? get sensores => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailsSensorStateCopyWith<DetailsSensorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsSensorStateCopyWith<$Res> {
  factory $DetailsSensorStateCopyWith(
          DetailsSensorState value, $Res Function(DetailsSensorState) then) =
      _$DetailsSensorStateCopyWithImpl<$Res, DetailsSensorState>;
  @useResult
  $Res call(
      {DetailsSensorStatus status,
      List<SensorEntity>? sensores,
      String? errorMessage});
}

/// @nodoc
class _$DetailsSensorStateCopyWithImpl<$Res, $Val extends DetailsSensorState>
    implements $DetailsSensorStateCopyWith<$Res> {
  _$DetailsSensorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? sensores = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DetailsSensorStatus,
      sensores: freezed == sensores
          ? _value.sensores
          : sensores // ignore: cast_nullable_to_non_nullable
              as List<SensorEntity>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailsSensorStateCopyWith<$Res>
    implements $DetailsSensorStateCopyWith<$Res> {
  factory _$$_DetailsSensorStateCopyWith(_$_DetailsSensorState value,
          $Res Function(_$_DetailsSensorState) then) =
      __$$_DetailsSensorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DetailsSensorStatus status,
      List<SensorEntity>? sensores,
      String? errorMessage});
}

/// @nodoc
class __$$_DetailsSensorStateCopyWithImpl<$Res>
    extends _$DetailsSensorStateCopyWithImpl<$Res, _$_DetailsSensorState>
    implements _$$_DetailsSensorStateCopyWith<$Res> {
  __$$_DetailsSensorStateCopyWithImpl(
      _$_DetailsSensorState _value, $Res Function(_$_DetailsSensorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? sensores = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_DetailsSensorState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DetailsSensorStatus,
      sensores: freezed == sensores
          ? _value._sensores
          : sensores // ignore: cast_nullable_to_non_nullable
              as List<SensorEntity>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DetailsSensorState implements _DetailsSensorState {
  const _$_DetailsSensorState(
      {this.status = DetailsSensorStatus.initial,
      final List<SensorEntity>? sensores,
      this.errorMessage})
      : _sensores = sensores;

  @override
  @JsonKey()
  final DetailsSensorStatus status;
  final List<SensorEntity>? _sensores;
  @override
  List<SensorEntity>? get sensores {
    final value = _sensores;
    if (value == null) return null;
    if (_sensores is EqualUnmodifiableListView) return _sensores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'DetailsSensorState(status: $status, sensores: $sensores, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailsSensorState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._sensores, _sensores) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_sensores), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailsSensorStateCopyWith<_$_DetailsSensorState> get copyWith =>
      __$$_DetailsSensorStateCopyWithImpl<_$_DetailsSensorState>(
          this, _$identity);
}

abstract class _DetailsSensorState implements DetailsSensorState {
  const factory _DetailsSensorState(
      {final DetailsSensorStatus status,
      final List<SensorEntity>? sensores,
      final String? errorMessage}) = _$_DetailsSensorState;

  @override
  DetailsSensorStatus get status;
  @override
  List<SensorEntity>? get sensores;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_DetailsSensorStateCopyWith<_$_DetailsSensorState> get copyWith =>
      throw _privateConstructorUsedError;
}
