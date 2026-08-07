import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAtGg76uDQ3obv2OPsPV_drguNYp2vcqLs",
            authDomain: "versus-you-2v4ww9.firebaseapp.com",
            projectId: "versus-you-2v4ww9",
            storageBucket: "versus-you-2v4ww9.firebasestorage.app",
            messagingSenderId: "566407914403",
            appId: "1:566407914403:web:f238357b4f8a81c2dcb016",
            measurementId: "G-NBSRV9P8HJ"));
  } else {
    await Firebase.initializeApp();
  }
}
