// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'perda.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Perda _$PerdaFromJson(Map<String, dynamic> json) {
  return _Perda.fromJson(json);
}

/// @nodoc
mixin _$Perda {
  String? get id => throw _privateConstructorUsedError;
  bool get isEgg => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerdaCopyWith<Perda> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerdaCopyWith<$Res> {
  factory $PerdaCopyWith(Perda value, $Res Function(Perda) then) =
      _$PerdaCopyWithImpl<$Res, Perda>;
  @useResult
  $Res call({String? id, bool isEgg, int count, DateTime dateTime});
}

/// @nodoc
class _$PerdaCopyWithImpl<$Res, $Val extends Perda>
    implements $PerdaCopyWith<$Res> {
  _$PerdaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isEgg = null,
    Object? count = null,
    Object? dateTime = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isEgg: null == isEgg
          ? _value.isEgg
          : isEgg // ignore: cast_nullable_to_non_nullable
              as bool,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PerdaCopyWith<$Res> implements $PerdaCopyWith<$Res> {
  factory _$$_PerdaCopyWith(_$_Perda value, $Res Function(_$_Perda) then) =
      __$$_PerdaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, bool isEgg, int count, DateTime dateTime});
}

/// @nodoc
class __$$_PerdaCopyWithImpl<$Res> extends _$PerdaCopyWithImpl<$Res, _$_Perda>
    implements _$$_PerdaCopyWith<$Res> {
  __$$_PerdaCopyWithImpl(_$_Perda _value, $Res Function(_$_Perda) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isEgg = null,
    Object? count = null,
    Object? dateTime = null,
  }) {
    return _then(_$_Perda(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isEgg: null == isEgg
          ? _value.isEgg
          : isEgg // ignore: cast_nullable_to_non_nullable
              as bool,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Perda implements _Perda {
  const _$_Perda(
      {this.id,
      required this.isEgg,
      required this.count,
      required this.dateTime});

  factory _$_Perda.fromJson(Map<String, dynamic> json) =>
      _$$_PerdaFromJson(json);

  @override
  final String? id;
  @override
  final bool isEgg;
  @override
  final int count;
  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'Perda(id: $id, isEgg: $isEgg, count: $count, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Perda &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isEgg, isEgg) || other.isEgg == isEgg) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, isEgg, count, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PerdaCopyWith<_$_Perda> get copyWith =>
      __$$_PerdaCopyWithImpl<_$_Perda>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PerdaToJson(
      this,
    );
  }
}

abstract class _Perda implements Perda {
  const factory _Perda(
      {final String? id,
      required final bool isEgg,
      required final int count,
      required final DateTime dateTime}) = _$_Perda;

  factory _Perda.fromJson(Map<String, dynamic> json) = _$_Perda.fromJson;

  @override
  String? get id;
  @override
  bool get isEgg;
  @override
  int get count;
  @override
  DateTime get dateTime;
  @override
  @JsonKey(ignore: true)
  _$$_PerdaCopyWith<_$_Perda> get copyWith =>
      throw _privateConstructorUsedError;
}
