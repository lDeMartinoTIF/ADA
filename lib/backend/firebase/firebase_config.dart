import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDKBUX_gy_rO6YefGVBiJTli-JIceeqjfU",
            authDomain: "adaptive-assistant-gy0yz9.firebaseapp.com",
            projectId: "adaptive-assistant-gy0yz9",
            storageBucket: "adaptive-assistant-gy0yz9.firebasestorage.app",
            messagingSenderId: "804923700135",
            appId: "1:804923700135:web:560bbe6079bdc33ac2fc82"));
  } else {
    await Firebase.initializeApp();
  }
}
