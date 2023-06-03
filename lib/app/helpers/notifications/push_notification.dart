import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> init() async {
    // Configurações para Android
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');

    // Configurações para iOS
    const DarwinInitializationSettings initializationSettingsIOS =
        DarwinInitializationSettings();

    // Configurações gerais
    const InitializationSettings initializationSettings =
        InitializationSettings(
            android: initializationSettingsAndroid,
            iOS: initializationSettingsIOS,
            macOS: initializationSettingsIOS);
     await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    await _firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    // Inicializa o plugin de notificações locais
    await _flutterLocalNotificationsPlugin.initialize(initializationSettings);

    // Configura a função para lidar com a abertura da notificação
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      // Chamada da função que lida com a abertura da notificação
      _handleNotificationOpen(message);
    });

    // Configura a função para lidar com a recepção de uma notificação enquanto o app está em primeiro plano
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // Chamada da função que lida com a recepção da notificação
      _handleNotificationReceived(message);
    });

    // Solicita permissão para exibir notificações no Android

    // Recupera o token do dispositivo para envio de notificações
    final String? token = await _firebaseMessaging.getToken();
    print('Token do dispositivo: $token');
  }

  void _handleNotificationOpen(RemoteMessage message) {
  }

  void _handleNotificationReceived(RemoteMessage message) {
    _showLocalNotification(
        message.notification?.title, message.notification?.body);
  }

  Future<void> _showLocalNotification(String? title, String? body) async {

    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'channel_id',
      'channel_name',
      importance: Importance.max,
      priority: Priority.high,
    );

    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);

    // Exibe a notificação local
    await _flutterLocalNotificationsPlugin.show(
      0,
      title,
      body,
      platformChannelSpecifics,
    );
  }
}
