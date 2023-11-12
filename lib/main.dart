
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:popticle/features/auth_gate.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'const/onboding/onboding_screen.dart';
import 'firebase_options.dart';

void main() async {
  await dotenv.load(fileName: 'assets/config/.env');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'POPTICLE',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFF8BBD0),
        primarySwatch: Colors.pink,
        fontFamily: "Intel",
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          errorStyle: TextStyle(height: 0),
          border: defaultInputBorder,
          enabledBorder: defaultInputBorder,
          focusedBorder: defaultInputBorder,
          errorBorder: defaultInputBorder,
        ),
      ),
      home: const OnboardingScreen(),
    );
  }
}

const defaultInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(16)),
  borderSide: BorderSide(
    color: Color(0xFFFF8BBD0),
    width: 1,
  ),
);
