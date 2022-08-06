// references
// https://github.com/akmadan/flutter-dialogflow/blob/master/lib/Messages.dart
// chatbot development: https://www.youtube.com/watch?v=GC6VAWi1n14
// PRofile development: https://github.com/debaghosh/Flutter-Profile-UI

import 'package:flutter/material.dart';
import 'package:uab/screens/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'UAB-HOSPITAL',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.green),
        home: HomePage());
  }
}
