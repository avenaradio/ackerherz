/// 1. 4h
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:seo_renderer/seo_renderer.dart';

import 'MainPage.dart';
import 'Supabase.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Supabase client
  Supabase.initialize(
    url: 'https://fzqgmsnmaznpvfswdepk.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ6cWdtc25tYXpucHZmc3dkZXBrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTg0NzQ2MTksImV4cCI6MjAzNDA1MDYxOX0.liPJIK6odTzbjRQpMQ3l3sRS3_0DsrLBDMRzC4hh1I8',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ackerherz.de 20€ Rabatt Code',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontFamily: 'NotoSans'),
          bodyMedium: TextStyle(fontFamily: 'NotoSans'),
          displayLarge: TextStyle(fontFamily: 'NotoSans'),
          displayMedium: TextStyle(fontFamily: 'NotoSans'),
          displaySmall: TextStyle(fontFamily: 'NotoSans'),
          headlineMedium: TextStyle(fontFamily: 'NotoSans'),
          headlineSmall: TextStyle(fontFamily: 'NotoSans'),
          titleLarge: TextStyle(fontFamily: 'NotoSans'),
          titleMedium: TextStyle(fontFamily: 'NotoSans'),
          titleSmall: TextStyle(fontFamily: 'NotoSans'),
          bodySmall: TextStyle(fontFamily: 'NotoSans'),
          labelSmall: TextStyle(fontFamily: 'NotoSans'),
          labelLarge: TextStyle(fontFamily: 'NotoSans'),
        ),
      ),
      home: const MyHomePage(title: 'Ackerherz.de 20€ Rabatt Code'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MainPage();
  }
}
