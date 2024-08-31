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
        return macos;
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
    apiKey: 'AIzaSyBYLNWMfQDQc-8Hg4zasliQiAE_3oUDp60',
    appId: '1:965678019655:web:f34a45afc55b11e9ee2d62',
    messagingSenderId: '965678019655',
    projectId: 'fir-tutotorial-ca32f',
    authDomain: 'fir-tutotorial-ca32f.firebaseapp.com',
    storageBucket: 'fir-tutotorial-ca32f.appspot.com',
    measurementId: 'G-DKPNMM5NL2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCQEYslrdsfhYpEFwR-An4yTgWs8NqaVFw',
    appId: '1:965678019655:android:7abb3bd85d567e0eee2d62',
    messagingSenderId: '965678019655',
    projectId: 'fir-tutotorial-ca32f',
    storageBucket: 'fir-tutotorial-ca32f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDYzz44sQexzlpacxDSJ28Eb4V3z_EVqug',
    appId: '1:965678019655:ios:2bfd0423175f8c51ee2d62',
    messagingSenderId: '965678019655',
    projectId: 'fir-tutotorial-ca32f',
    storageBucket: 'fir-tutotorial-ca32f.appspot.com',
    iosBundleId: 'com.example.firebasetut',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDYzz44sQexzlpacxDSJ28Eb4V3z_EVqug',
    appId: '1:965678019655:ios:2bfd0423175f8c51ee2d62',
    messagingSenderId: '965678019655',
    projectId: 'fir-tutotorial-ca32f',
    storageBucket: 'fir-tutotorial-ca32f.appspot.com',
    iosBundleId: 'com.example.firebasetut',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBYLNWMfQDQc-8Hg4zasliQiAE_3oUDp60',
    appId: '1:965678019655:web:56a9a057606f9e6aee2d62',
    messagingSenderId: '965678019655',
    projectId: 'fir-tutotorial-ca32f',
    authDomain: 'fir-tutotorial-ca32f.firebaseapp.com',
    storageBucket: 'fir-tutotorial-ca32f.appspot.com',
    measurementId: 'G-V7CXV3Y6RQ',
  );
}
