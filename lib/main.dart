
import 'dart:io';

import 'package:complete_clean_web_admin/views/screens/main_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: kIsWeb || Platform.isAndroid? FirebaseOptions(
    apiKey: "AIzaSyBR3yhhSuuH1mINJ82lVsJygoIQ_EOovLQ", 
    appId: "1:833227993903:web:2c6a4ea3442a5663e667da", 
    messagingSenderId: "833227993903", 
    projectId: "complete-clean-app-b3c5b", 
    storageBucket: "complete-clean-app-b3c5b.appspot.com", 
    )
    : null );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
            builder: EasyLoading.init(),
    );
  }
}
