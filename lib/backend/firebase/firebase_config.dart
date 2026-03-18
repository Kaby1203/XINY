import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBRENL3u7iWcaaUyfFZFpacvytZ2-Xr34c",
            authDomain: "supermercado-abphot.firebaseapp.com",
            projectId: "supermercado-abphot",
            storageBucket: "supermercado-abphot.firebasestorage.app",
            messagingSenderId: "45191967598",
            appId: "1:45191967598:web:6d7bf95fca49c86b4d077f"));
  } else {
    await Firebase.initializeApp();
  }
}
