import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'pages/check_login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(options: FirebaseOptions(apiKey: 'AIzaSyBv6TFLMLT7V29Bt9X-3jo0_9-GFvaJL8A', appId: '1:357657573876:android:849fcd149ca0cfdf4d61a1', messagingSenderId: '357657573876', projectId: 'vutesting-90023'));
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
      home: checkLogin(), // Use the homePage directly as the home property.
    );
  }
}
