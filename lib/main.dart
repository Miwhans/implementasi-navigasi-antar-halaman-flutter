import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Profil Mahasiswa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: const Color(0xFF1E88E5),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1E88E5),
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
        ),
      ),
      home: const HomePage(),
    );
  }
}