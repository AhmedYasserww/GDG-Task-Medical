import 'package:flutter/material.dart';
import 'package:gdg_task_medical/features/splash/presentaion/views/splash_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme:GoogleFonts.overpassTextTheme(),
      ),
      home: const SplashView()
    );
  }
}

