import 'package:flutter/material.dart';
import 'detail_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Foto Profil dalam container bundar
              Container(
                width: 130,
                height: 130,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFE0F2FE),
                ),
                child: const Center(
                  child: Icon(
                    Icons.person,
                    size: 80,
                    color: Color(0xFF1E88E5),
                  ),
                ),
              ),
              const SizedBox(height: 28),
              // Nama Mahasiswa
              const Text(
                'Nama',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              const SizedBox(height: 4),
              const Text(
                'Hilmy Raihan',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 16),
              // NIM Mahasiswa
              const Text(
                'NIM',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              const SizedBox(height: 4),
              const Text(
                '152022228',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 36),
              // Tombol Buka Detail
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailPage(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.person_outline),
                  label: const Text(
                    'Buka Detail',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2E7D32),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              // Tombol Kembali ke Home
              SizedBox(
                width: double.infinity,
                height: 48,
                child: OutlinedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  label: const Text(
                    'Kembali ke Home',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black87,
                    side: BorderSide(color: Colors.grey.shade400),
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