import 'package:freezed_annotation/freezed_annotation.dart';

part 'perda.freezed.dart';
part 'perda.g.dart';

@freezed
class Perda with _$Perda{
  const factory Perda ({
    String? id,
    required bool isEgg,
    required int count,
    required DateTime dateTime,
})=_Perda;
  factory Perda.fromJson(Map<String, dynamic> json) =>
      _$PerdaFromJson(json);
}