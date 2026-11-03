import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDLeB3mWa0G2dON25Q0uYp30rsu-UeYsYE",
            authDomain: "opticsuit-app-e09fe.firebaseapp.com",
            projectId: "opticsuit-app-e09fe",
            storageBucket: "opticsuit-app-e09fe.firebasestorage.app",
            messagingSenderId: "507877468383",
            appId: "1:507877468383:web:f8d2dd1eedf7959d0e216a",
            measurementId: "G-34Z4R5QKH6"));
  } else {
    await Firebase.initializeApp();
  }
}
