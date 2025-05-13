import 'package:flutter/material.dart';


class Peraturan extends StatelessWidget {
  final List<String> rules = [
    "1. Dilarang mengunggah konten yang mengandung kekerasan atau kebencian.",
    "2. Jaga privasi diri sendiri dan orang lain.",
    "3. Tidak boleh menggunakan musik tanpa hak cipta tanpa izin.",
    "4. Hindari spam dan komentar tidak pantas.",
    "5. Gunakan TikTok sesuai dengan usia yang ditentukan (minimal 13 tahun).",
    "6. Hormati sesama pengguna TikTok.",
    "7. Jangan menyebarkan berita palsu (hoaks).",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Peraturan Penggunaan TikTok',
          style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: rules.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 2,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: Icon(Icons.rule, color: Colors.black),
                title: Text(
                  rules[index],
                  style: TextStyle(fontSize: 16),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
