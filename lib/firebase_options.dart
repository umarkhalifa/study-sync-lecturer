// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCKK6hjHUdZFiK_BW9EtF7_BfJqBGWdjCw',
    appId: '1:157219186526:web:0ed838951b277ee02e91cf',
    messagingSenderId: '157219186526',
    projectId: 'lecture-reminder-5a40b',
    authDomain: 'lecture-reminder-5a40b.firebaseapp.com',
    storageBucket: 'lecture-reminder-5a40b.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDN6UA9KKQdhR-JqDEwFtbrBVvymuMtaT4',
    appId: '1:157219186526:android:6cfa744d384d38a02e91cf',
    messagingSenderId: '157219186526',
    projectId: 'lecture-reminder-5a40b',
    storageBucket: 'lecture-reminder-5a40b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBmy2yWe2DG3gitY5iVQjUse82KF8QMQnc',
    appId: '1:157219186526:ios:52ce4726596d63142e91cf',
    messagingSenderId: '157219186526',
    projectId: 'lecture-reminder-5a40b',
    storageBucket: 'lecture-reminder-5a40b.appspot.com',
    iosBundleId: 'com.example.alhikmahScheduleLecturer',
  );
}
