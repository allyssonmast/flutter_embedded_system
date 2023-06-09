import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@module
abstract class FirebaseInjectableModule {
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @lazySingleton
  FirebaseFirestore get store => FirebaseFirestore.instance;
  @lazySingleton
  FirebaseStorage get storage => FirebaseStorage.instance;
  @lazySingleton
  FirebaseDatabase get database => FirebaseDatabase.instance;
  @lazySingleton
  http.Client get client => http.Client();
}
