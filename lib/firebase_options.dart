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
    apiKey: 'AIzaSyDVLPI2RwU3_ohUH_JCNccb5oY_dIgXis4',
    appId: '1:838331589101:web:e40eefe043e2ad9284c7e4',
    messagingSenderId: '838331589101',
    projectId: 'guffgaaf-653c7',
    authDomain: 'guffgaaf-653c7.firebaseapp.com',
    storageBucket: 'guffgaaf-653c7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBHfV8XkMPYDbhjie06KYgyjdWgbCLEKNg',
    appId: '1:838331589101:android:72810f013489d6ff84c7e4',
    messagingSenderId: '838331589101',
    projectId: 'guffgaaf-653c7',
    storageBucket: 'guffgaaf-653c7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDqfqxyIlEMFQ6c_0jzYppxLZ_yDfeR1iY',
    appId: '1:838331589101:ios:aa5bd67855948fee84c7e4',
    messagingSenderId: '838331589101',
    projectId: 'guffgaaf-653c7',
    storageBucket: 'guffgaaf-653c7.appspot.com',
    iosBundleId: 'com.example.guffGaaf',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDqfqxyIlEMFQ6c_0jzYppxLZ_yDfeR1iY',
    appId: '1:838331589101:ios:aa5bd67855948fee84c7e4',
    messagingSenderId: '838331589101',
    projectId: 'guffgaaf-653c7',
    storageBucket: 'guffgaaf-653c7.appspot.com',
    iosBundleId: 'com.example.guffGaaf',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDVLPI2RwU3_ohUH_JCNccb5oY_dIgXis4',
    appId: '1:838331589101:web:a9b5d76299a329e384c7e4',
    messagingSenderId: '838331589101',
    projectId: 'guffgaaf-653c7',
    authDomain: 'guffgaaf-653c7.firebaseapp.com',
    storageBucket: 'guffgaaf-653c7.appspot.com',
  );
}
