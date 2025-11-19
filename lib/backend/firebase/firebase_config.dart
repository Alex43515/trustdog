import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDdvFGnlrN_sHi611FHRXC134rDBMv5hE8",
            authDomain: "trustdog-k1q3oq.firebaseapp.com",
            projectId: "trustdog-k1q3oq",
            storageBucket: "trustdog-k1q3oq.firebasestorage.app",
            messagingSenderId: "339926289202",
            appId: "1:339926289202:web:c03d660247a129a26ca52b"));
  } else {
    await Firebase.initializeApp();
  }
}
