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
    apiKey: 'AIzaSyBCAPIkTE4eSLXWs_yC9SHaKrF84Xkz48w',
    appId: '1:458829692791:web:ba56da3af81c8db3d66b72',
    messagingSenderId: '458829692791',
    projectId: 'mediuab-3fcaf',
    authDomain: 'mediuab-3fcaf.firebaseapp.com',
    storageBucket: 'mediuab-3fcaf.appspot.com',
    measurementId: 'G-G9V8XRT241',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCrTwuyzZpyd14dhFaw2jOHojzOiN0qm10',
    appId: '1:458829692791:android:7d4e7c46c3abbd4fd66b72',
    messagingSenderId: '458829692791',
    projectId: 'mediuab-3fcaf',
    storageBucket: 'mediuab-3fcaf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCk4qh5IANzIv9AAMQQgbr5oOZw50OVzBw',
    appId: '1:458829692791:ios:1313687b41f1d244d66b72',
    messagingSenderId: '458829692791',
    projectId: 'mediuab-3fcaf',
    storageBucket: 'mediuab-3fcaf.appspot.com',
    iosClientId: '458829692791-ojjbq3akt8b4894a90i356h6udd0tb32.apps.googleusercontent.com',
    iosBundleId: 'com.example.uab',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCk4qh5IANzIv9AAMQQgbr5oOZw50OVzBw',
    appId: '1:458829692791:ios:1313687b41f1d244d66b72',
    messagingSenderId: '458829692791',
    projectId: 'mediuab-3fcaf',
    storageBucket: 'mediuab-3fcaf.appspot.com',
    iosClientId: '458829692791-ojjbq3akt8b4894a90i356h6udd0tb32.apps.googleusercontent.com',
    iosBundleId: 'com.example.uab',
  );
}