// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'perda.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Perda _$$_PerdaFromJson(Map<String, dynamic> json) => _$_Perda(
      id: json['id'] as String?,
      isEgg: json['isEgg'] as bool,
      count: json['count'] as int,
      dateTime: DateTime.parse(json['dateTime'] as String),
    );

Map<String, dynamic> _$$_PerdaToJson(_$_Perda instance) => <String, dynamic>{
      'id': instance.id,
      'isEgg': instance.isEgg,
      'count': instance.count,
      'dateTime': instance.dateTime.toIso8601String(),
    };
