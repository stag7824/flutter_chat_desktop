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
        return web;
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
    apiKey: 'AIzaSyCv36zN1lGIzyRrzNN9AueSPB84LvYe64s',
    appId: '1:833262704878:web:eb1edfc0ec2ce981867bff',
    messagingSenderId: '833262704878',
    projectId: 'chrome-extension-58ce4',
    authDomain: 'chrome-extension-58ce4.firebaseapp.com',
    storageBucket: 'chrome-extension-58ce4.appspot.com',
    measurementId: 'G-V5YVH5JYJR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDgUiPcIWRF_Qjaq5c9Iy4XTtbiyfpJfUk',
    appId: '1:833262704878:android:5543d5b2153a5ded867bff',
    messagingSenderId: '833262704878',
    projectId: 'chrome-extension-58ce4',
    storageBucket: 'chrome-extension-58ce4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAyjPoUpNmXjArx0j-p2HanTe6qx2CMEiA',
    appId: '1:833262704878:ios:9a117da45b69a2d6867bff',
    messagingSenderId: '833262704878',
    projectId: 'chrome-extension-58ce4',
    storageBucket: 'chrome-extension-58ce4.appspot.com',
    iosClientId:
        '833262704878-fu5b00i32vk34p8vi9uuki96si9lohbo.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatExtension',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAyjPoUpNmXjArx0j-p2HanTe6qx2CMEiA',
    appId: '1:833262704878:ios:9a117da45b69a2d6867bff',
    messagingSenderId: '833262704878',
    projectId: 'chrome-extension-58ce4',
    storageBucket: 'chrome-extension-58ce4.appspot.com',
    iosClientId:
        '833262704878-fu5b00i32vk34p8vi9uuki96si9lohbo.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatExtension',
  );
}
