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
    apiKey: 'AIzaSyBwRWLeZOPnJ81g9aIkeBz6n4aEEj0AzV4',
    appId: '1:722249766556:web:03d70cd3a139826c99bf59',
    messagingSenderId: '722249766556',
    projectId: 'my-cool-mvvm-app',
    authDomain: 'my-cool-mvvm-app.firebaseapp.com',
    storageBucket: 'my-cool-mvvm-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCzWoZtawY5opvFi8n2uoFBJVKEntLGAZg',
    appId: '1:722249766556:android:a9d8779de6f1af4999bf59',
    messagingSenderId: '722249766556',
    projectId: 'my-cool-mvvm-app',
    storageBucket: 'my-cool-mvvm-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAG9PiPurO9zeCdSm-6WoK_MDIx0K_yZBs',
    appId: '1:722249766556:ios:fb471c8000b3e1b899bf59',
    messagingSenderId: '722249766556',
    projectId: 'my-cool-mvvm-app',
    storageBucket: 'my-cool-mvvm-app.appspot.com',
    iosClientId: '722249766556-2ne9aje8jalk0v7glumtjs5t157f3pil.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );
}
