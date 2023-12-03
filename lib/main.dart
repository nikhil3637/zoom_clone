import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zoom_clone/screens/home_screen.dart';
import 'package:zoom_clone/screens/login_screen.dart';
import 'package:zoom_clone/utilities/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyB9TBagUmFXwbSkxg6TkpFZfyqv10xG658", // paste your api key here
      appId: "1:468324512300:android:a27c2ac9ba3a347bf79789", //paste your app id here
      messagingSenderId:"468324512300", //paste your messagingSenderId here
      projectId:"zoom-clone-133c9", //paste your project id here
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zoom Clone',
      theme: ThemeData.dark().copyWith(
       scaffoldBackgroundColor: backgroundColor,
        useMaterial3: true,
      ),
      routes: {
        '/login' : (context) => const LoginScreen(),
        '/home' : (context) => const Homescreen()
      },
      home: const LoginScreen()
    );
  }
}
