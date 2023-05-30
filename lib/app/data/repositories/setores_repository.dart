import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:embedded_system/app/data/models/setores.dart';
import 'package:firebase_database/firebase_database.dart';

import '../models/sensor.dart';

class SetoresRepository {
  final _store = FirebaseFirestore.instance;
  final _database = FirebaseDatabase.instance;
  Future<List<Setores>> getSetores() async {
    return await _store.collection('setores').get().then((value) =>
        List.from(value.docs.map((e) => Setores.fromJson(e.data()))));
  }

  Future<List<Sensor>> getTempHum(String name, String dateTime) async {
    String startDateTime = '$dateTime 00:00:00.000000';
    String endDateTime = '$dateTime 23:59:59.999999';
    return await _database
        .ref('leitura/$name')
        .orderByChild('timestemp')
        .startAt(startDateTime)
        .endAt(endDateTime)
        .once()
        .then(
          (value) => value.snapshot.exists
              ? List.from(
                  value.snapshot.children.map(
                    (e) => Sensor.fromJson(jsonDecode(jsonEncode(e.value))),
                  ),
                )
              : [],
        );
  }
}
