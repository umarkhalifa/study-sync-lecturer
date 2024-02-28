import 'dart:convert';
import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// !TOP LEVEL FUNCTION
Future<void> handleBackgroundMessage(RemoteMessage message) async {
  log('${message.notification?.title}');
  log('${message.notification?.body}');
  PushNotificationService().showNotificationOnForeground(message.data);
}

class PushNotificationService {

  //! PLUGINS
  final _firebaseMessaging = FirebaseMessaging.instance;
  final _localNotifications = FlutterLocalNotificationsPlugin();


//  ! HANDLE NOTIFICATIONS ON FOREGROUND
  final _androidChannel = const AndroidNotificationChannel(
      'high_importance channel', 'High Importance Notifications',
      description: "This channel is used for important notifications",
      importance: Importance.max);


//  !HANDLE MESSAGES FROM BACKGROUND
  void handleMessage(RemoteMessage? message) {
    if (message == null) return;
    showNotificationOnForeground(message.data);
  }


//  ! INITIALIZE LOCAL NOTIFICATIONS
  Future initLocalNotifications() async {
    const ios = DarwinInitializationSettings();
    const android = AndroidInitializationSettings('@drawable/img');
    const settings = InitializationSettings(android: android, iOS: ios);

    await _localNotifications.initialize(
      settings,
      onDidReceiveNotificationResponse: (payload) {
        final message = RemoteMessage.fromMap(jsonDecode(payload.payload!));
        handleMessage(message);
      },
    );
    final platform = _localNotifications.resolvePlatformSpecificImplementation
    <AndroidFlutterLocalNotificationsPlugin>();

    await platform?.createNotificationChannel(_androidChannel);
  }


//  ! INITIALIZE PUSH NOTIFICATIONS SERVICE
  Future initPushNotifications() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);


    //! HANDLE BACKGROUND MESSAGES
    FirebaseMessaging.onBackgroundMessage((handleBackgroundMessage));
    FirebaseMessaging.onMessage.listen((message) {
      showNotificationOnForeground(message.data);
    });
  }


  //! SHOW NOTIFICATION MESSAGE
  void showNotificationOnForeground(Map<String, dynamic> message) {
    const notificationDetails = NotificationDetails(
      android: AndroidNotificationDetails(
          'com.example.stitchvine_mobile', 'Stitchvine - Mobile',
          importance: Importance.max, priority: Priority.max),
      iOS: DarwinNotificationDetails(),
    );

    log('Showing Notification');
    _localNotifications.show(DateTime.now().microsecond, message['title'],
        message['body'], notificationDetails,
        payload: json.encode(message));
  }

  //! CANCEL CLASS

  //! INITIALIZE ALL PREVIOUS ALL INITIALIZATIONS
  Future<void> initNotifications() async {
    await _firebaseMessaging.requestPermission();
    final fcmToken = await _firebaseMessaging.getToken();
    log(fcmToken!);
    await initPushNotifications();
    await initLocalNotifications();
    // initNotifications();
  }
}
