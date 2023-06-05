import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

void scheduleLogout() {
  // Definir a data e hora para o logout
  DateTime logoutDateTime =
      DateTime(2023, 6, 30, 21, 21); // Exemplo: 15 de junho de 2023, 14:30

  // Calcular a duração até o logout
  Duration logoutDuration = logoutDateTime.difference(DateTime.now());

  Timer(logoutDuration, () {
    FirebaseAuth auth = FirebaseAuth.instance;
    auth.signOut();

    print('Logout agendado com sucesso');
  });
}
