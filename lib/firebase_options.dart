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
    apiKey: 'AIzaSyCYRk3x1QGtCpl3S3B8Xn4nbKXC7G_OM6c',
    appId: '1:394857769287:web:1c49218c88afb00078c462',
    messagingSenderId: '394857769287',
    projectId: 'nada1-3fa46',
    authDomain: 'nada1-3fa46.firebaseapp.com',
    storageBucket: 'nada1-3fa46.appspot.com',
    measurementId: 'G-JVCLLEPKY0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDid44OSJqCcJCUztAoQMYgZqyN9bA1nF0',
    appId: '1:394857769287:android:619f09ebdf27781f78c462',
    messagingSenderId: '394857769287',
    projectId: 'nada1-3fa46',
    storageBucket: 'nada1-3fa46.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAoLfkej3er8AXAXtr5RGzbFgaqbVleaL4',
    appId: '1:394857769287:ios:e0b239bef381efd178c462',
    messagingSenderId: '394857769287',
    projectId: 'nada1-3fa46',
    storageBucket: 'nada1-3fa46.appspot.com',
    iosClientId: '394857769287-jeep3nqr6a2urjide5o1rkq0lv265aue.apps.googleusercontent.com',
    iosBundleId: 'com.example.calendar',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAoLfkej3er8AXAXtr5RGzbFgaqbVleaL4',
    appId: '1:394857769287:ios:e0b239bef381efd178c462',
    messagingSenderId: '394857769287',
    projectId: 'nada1-3fa46',
    storageBucket: 'nada1-3fa46.appspot.com',
    iosClientId: '394857769287-jeep3nqr6a2urjide5o1rkq0lv265aue.apps.googleusercontent.com',
    iosBundleId: 'com.example.calendar',
  );
}
