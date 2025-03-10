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
    apiKey: 'AIzaSyDQEYhbsm3Mh75cgf_tGcZWcn-CC6zrgg4',
    appId: '1:31074228469:web:b4990dd8ea2c1a3d82cdbc',
    messagingSenderId: '31074228469',
    projectId: 'medicoplusedc',
    authDomain: 'medicoplusedc.firebaseapp.com',
    storageBucket: 'medicoplusedc.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCNcsv1zn-QNxtr7JOxQeuOEegixVyujg4',
    appId: '1:31074228469:android:01cc61d0e72c552c82cdbc',
    messagingSenderId: '31074228469',
    projectId: 'medicoplusedc',
    storageBucket: 'medicoplusedc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDC6srRTHLbsiV2yYpJN7b-EBVEclR5BhU',
    appId: '1:31074228469:ios:5f72405662bcbe7282cdbc',
    messagingSenderId: '31074228469',
    projectId: 'medicoplusedc',
    storageBucket: 'medicoplusedc.appspot.com',
    iosClientId:
        '31074228469-m4hmmsfmaes7qget7iscsdknf1r0f9q1.apps.googleusercontent.com',
    iosBundleId: 'com.example.medicoplusconsent',
  );
}
