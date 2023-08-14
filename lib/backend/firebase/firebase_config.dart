import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAUihFL8raFJLS_P1i1iYzKOkw-FHxpdrk",
            authDomain: "deliveryeat-c88cf.firebaseapp.com",
            projectId: "deliveryeat-c88cf",
            storageBucket: "deliveryeat-c88cf.appspot.com",
            messagingSenderId: "986135973179",
            appId: "1:986135973179:web:cacd11af5dda9897667b1e",
            measurementId: "G-GHHYZ7HGJ2"));
  } else {
    await Firebase.initializeApp();
  }
}
