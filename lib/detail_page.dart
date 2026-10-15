import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  Widget _buildInfoRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFFE3F2FD),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: const Color(0xFF1E88E5), size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
        child: Column(
          children: [
            _buildInfoRow(
              icon: Icons.school,
              label: 'Nama',
              value: 'Hilmy Raihan',
            ),
            _buildInfoRow(
              icon: Icons.badge,
              label: 'NIM',
              value: '152022228',
            ),
            _buildInfoRow(
              icon: Icons.menu_book,
              label: 'Program Studi',
              value: 'Informatika',
            ),
            _buildInfoRow(
              icon: Icons.email,
              label: 'Email',
              value: 'hilmy@itenas.ac.id',
            ),
            _buildInfoRow(
              icon: Icons.article,
              label: 'Tentang Saya',
              value:
                  'Saya adalah mahasiswa yang tertarik pada pengembangan aplikasi mobile.',
            ),
            const SizedBox(height: 36),
            // Tombol Kembali ke Profile
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text(
                  'Kembali ke Profile',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF7E57C2),
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
    );
  }
}