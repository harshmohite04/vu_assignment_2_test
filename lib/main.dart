import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(options: FirebaseOptions(apiKey: 'AIzaSyBd6ocAdHrj0DU0cNIBUPQAI5LJxfyTMh4', appId: '1:632888776873:android:fa88f9c63f3959bb32f1b8', messagingSenderId: '632888776873', projectId: 'vutesting-48f0e'));
  runApp(const FirstPage());
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: homePage(), // Use the homePage directly as the home property.
    );
  }
}
