import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA-xrnFWTXNCgZUdXw0WfQ-QIRIhBNf5Xw",
            authDomain: "squarehack-6abd9.firebaseapp.com",
            projectId: "squarehack-6abd9",
            storageBucket: "squarehack-6abd9.appspot.com",
            messagingSenderId: "30537087776",
            appId: "1:30537087776:web:54b67c8c398d173711b545",
            measurementId: "G-6W3C6XFQEF"));
  } else {
    await Firebase.initializeApp();
  }
}
