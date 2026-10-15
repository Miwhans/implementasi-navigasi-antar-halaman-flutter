import 'package:flutter/material.dart';
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo Aplikasi
              const Icon(
                Icons.school,
                size: 110,
                color: Color(0xFF1E88E5),
              ),
              const SizedBox(height: 24),
              // Judul Aplikasi
              const Text(
                'Aplikasi Profil\nMahasiswa',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              // Subtitle
              const Text(
                'Belajar Navigasi di Flutter',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 40),
              // Tombol Buka Profile
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfilePage(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text(
                    'Buka Profile',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E88E5),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}