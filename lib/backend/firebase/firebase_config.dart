import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDWfo-4XujHLHwZFiV-exjCcR7RcxatZak",
            authDomain: "tienda-x-i-n-y-ypl2cw.firebaseapp.com",
            projectId: "tienda-x-i-n-y-ypl2cw",
            storageBucket: "tienda-x-i-n-y-ypl2cw.firebasestorage.app",
            messagingSenderId: "520108333720",
            appId: "1:520108333720:web:4e98ae07579933106b0eed"));
  } else {
    await Firebase.initializeApp();
  }
}
