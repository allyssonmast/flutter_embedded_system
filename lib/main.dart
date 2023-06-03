import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app/helpers/notifications/push_notification.dart';
import 'bloc_observer.dart';
import 'app/config/firebase_options.dart';
import 'injection.dart';
import 'myapp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureDependencies();
  await NotificationService().init();
  Bloc.observer = TripBlocObserver();
  runApp(const MyApp());
}
