// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$UserEntity {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isTraveled => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  List<String> get listContact => throw _privateConstructorUsedError;
  List<String> get listInterests => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEntityCopyWith<UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) then) =
      _$UserEntityCopyWithImpl<$Res, UserEntity>;
  @useResult
  $Res call(
      {String id,
      String email,
      String name,
      String description,
      bool isTraveled,
      String url,
      List<String> listContact,
      List<String> listInterests});
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res, $Val extends UserEntity>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? description = null,
    Object? isTraveled = null,
    Object? url = null,
    Object? listContact = null,
    Object? listInterests = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isTraveled: null == isTraveled
          ? _value.isTraveled
          : isTraveled // ignore: cast_nullable_to_non_nullable
              as bool,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      listContact: null == listContact
          ? _value.listContact
          : listContact // ignore: cast_nullable_to_non_nullable
              as List<String>,
      listInterests: null == listInterests
          ? _value.listInterests
          : listInterests // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserEntityCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      String name,
      String description,
      bool isTraveled,
      String url,
      List<String> listContact,
      List<String> listInterests});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res>
    extends _$UserEntityCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? description = null,
    Object? isTraveled = null,
    Object? url = null,
    Object? listContact = null,
    Object? listInterests = null,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isTraveled: null == isTraveled
          ? _value.isTraveled
          : isTraveled // ignore: cast_nullable_to_non_nullable
              as bool,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      listContact: null == listContact
          ? _value._listContact
          : listContact // ignore: cast_nullable_to_non_nullable
              as List<String>,
      listInterests: null == listInterests
          ? _value._listInterests
          : listInterests // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {required this.id,
      required this.email,
      required this.name,
      required this.description,
      required this.isTraveled,
      required this.url,
      required final List<String> listContact,
      required final List<String> listInterests})
      : _listContact = listContact,
        _listInterests = listInterests;

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String name;
  @override
  final String description;
  @override
  final bool isTraveled;
  @override
  final String url;
  final List<String> _listContact;
  @override
  List<String> get listContact {
    if (_listContact is EqualUnmodifiableListView) return _listContact;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listContact);
  }

  final List<String> _listInterests;
  @override
  List<String> get listInterests {
    if (_listInterests is EqualUnmodifiableListView) return _listInterests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listInterests);
  }

  @override
  String toString() {
    return 'UserEntity(id: $id, email: $email, name: $name, description: $description, isTraveled: $isTraveled, url: $url, listContact: $listContact, listInterests: $listInterests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isTraveled, isTraveled) ||
                other.isTraveled == isTraveled) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality()
                .equals(other._listContact, _listContact) &&
            const DeepCollectionEquality()
                .equals(other._listInterests, _listInterests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      name,
      description,
      isTraveled,
      url,
      const DeepCollectionEquality().hash(_listContact),
      const DeepCollectionEquality().hash(_listInterests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements UserEntity {
  const factory _User(
      {required final String id,
      required final String email,
      required final String name,
      required final String description,
      required final bool isTraveled,
      required final String url,
      required final List<String> listContact,
      required final List<String> listInterests}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String get name;
  @override
  String get description;
  @override
  bool get isTraveled;
  @override
  String get url;
  @override
  List<String> get listContact;
  @override
  List<String> get listInterests;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
