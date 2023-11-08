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
        return macos;
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
    apiKey: 'AIzaSyCJo7vkVvVcp7RriLM56ZT4GE39Rnj5EF8',
    appId: '1:285584440399:web:80c7ee525e33dacc2abe3a',
    messagingSenderId: '285584440399',
    projectId: 'she-ride-54f14',
    authDomain: 'she-ride-54f14.firebaseapp.com',
    databaseURL: 'https://she-ride-54f14-default-rtdb.firebaseio.com',
    storageBucket: 'she-ride-54f14.appspot.com',
    measurementId: 'G-ZYGWQKXHB3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDUecKvnZH2fXaMGHZ4gNcjKAQhcogF1pc',
    appId: '1:285584440399:android:210bfcff445570bd2abe3a',
    messagingSenderId: '285584440399',
    projectId: 'she-ride-54f14',
    databaseURL: 'https://she-ride-54f14-default-rtdb.firebaseio.com',
    storageBucket: 'she-ride-54f14.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCg4ouOY6799YkgahzPHPdf8xQCOhOqrFs',
    appId: '1:285584440399:ios:7c11809bec0695e42abe3a',
    messagingSenderId: '285584440399',
    projectId: 'she-ride-54f14',
    databaseURL: 'https://she-ride-54f14-default-rtdb.firebaseio.com',
    storageBucket: 'she-ride-54f14.appspot.com',
    iosBundleId: 'com.example.rideApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCg4ouOY6799YkgahzPHPdf8xQCOhOqrFs',
    appId: '1:285584440399:ios:d00e5b388202447c2abe3a',
    messagingSenderId: '285584440399',
    projectId: 'she-ride-54f14',
    databaseURL: 'https://she-ride-54f14-default-rtdb.firebaseio.com',
    storageBucket: 'she-ride-54f14.appspot.com',
    iosBundleId: 'com.example.rideApp.RunnerTests',
  );
}
