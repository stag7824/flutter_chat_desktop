import 'package:firebase_core/firebase_core.dart';
import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_desktop/Screens/home_screen.dart';
import 'package:flutter_chat_desktop/Screens/login_screen.dart';
import 'package:flutter_chat_desktop/firebase_options.dart';

// FirebaseOptions get firebaseOptions => const FirebaseOptions(
//       apiKey: 'AIzaSyCv36zN1lGIzyRrzNN9AueSPB84LvYe64s',
//       appId: '1:833262704878:web:eb1edfc0ec2ce981867bff',
//       messagingSenderId: '833262704878',
//       projectId: 'chrome-extension-58ce4',
//       authDomain: 'chrome-extension-58ce4.firebaseapp.com',
//       storageBucket: 'chrome-extension-58ce4.appspot.com',
//       measurementId: 'G-V5YVH5JYJR',
//     );
//     {
//   apiKey: "AIzaSyCv36zN1lGIzyRrzNN9AueSPB84LvYe64s",
//   authDomain: "chrome-extension-58ce4.firebaseapp.com",
//   projectId: "chrome-extension-58ce4",
//   storageBucket: "chrome-extension-58ce4.appspot.com",
//   messagingSenderId: "833262704878",
//   appId: "1:833262704878:web:eb1edfc0ec2ce981867bff",
//   measurementId: "G-V5YVH5JYJR"
// };
const apiKey = "AIzaSyCv36zN1lGIzyRrzNN9AueSPB84LvYe64s";
const projectId = "chrome-extension-58ce4";
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firestore.initialize(projectId);

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
