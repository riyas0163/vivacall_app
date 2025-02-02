// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBIAE_7jc4i2HJ-S3A00pZpUQGdAoAucvQ',
    appId: '1:677555072647:web:1b00ada3ea290160599222',
    messagingSenderId: '677555072647',
    projectId: 'vivacall-f3b46',
    authDomain: 'vivacall-f3b46.firebaseapp.com',
    storageBucket: 'vivacall-f3b46.appspot.com',
    measurementId: 'G-H92G09N3W3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAfbc69_fklatz28MwoyRlz0O7JmQy_97A',
    appId: '1:677555072647:android:a0804c29c462aa77599222',
    messagingSenderId: '677555072647',
    projectId: 'vivacall-f3b46',
    storageBucket: 'vivacall-f3b46.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDHH7rClsnWipbl4btmUvT1uPrAyviQPEk',
    appId: '1:677555072647:ios:3c8ecae496a730d5599222',
    messagingSenderId: '677555072647',
    projectId: 'vivacall-f3b46',
    storageBucket: 'vivacall-f3b46.appspot.com',
    iosBundleId: 'com.example.vivacall',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBIAE_7jc4i2HJ-S3A00pZpUQGdAoAucvQ',
    appId: '1:677555072647:web:ee32198c36615393599222',
    messagingSenderId: '677555072647',
    projectId: 'vivacall-f3b46',
    authDomain: 'vivacall-f3b46.firebaseapp.com',
    storageBucket: 'vivacall-f3b46.appspot.com',
    measurementId: 'G-JVJRB1CS96',
  );

}