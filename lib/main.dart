import 'package:coal_transport_tracker/pages/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:coal_transport_tracker/pages/homepage/homepage.dart';
import 'package:coal_transport_tracker/pages/login_forgotpass/login_page.dart';
import 'package:coal_transport_tracker/pages/intro_pages/intro_page.dart';
import 'package:coal_transport_tracker/pages/homepage/hompage_subpages/profile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
