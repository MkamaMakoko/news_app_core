library news_app_core;

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}
