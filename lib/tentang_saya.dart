import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TentangSaya(),
    );
  }
}

class TentangSaya extends StatelessWidget{
  const TentangSaya ({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // perintah agar bisa di-scroll
        child: Column(
          children: [
            // Bagian Header Profil
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.black,
              alignment: Alignment.topCenter,
              child: const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Tentang Pengguna',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            
            // Bagian Foto Profil
            Transform.translate(
              offset: const Offset(0, -50),
              child: const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/profil.jpg'),
              ),
            ),

            // Nama Mahasiswa dan NIM
            Transform.translate(
              offset: const Offset(0, -35),
              child: const Column(
                children: [
                  Text(
                    "@andika.mahend",
                    style: TextStyle(fontSize: 18, color: Colors.black ,fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Andika Mahendra Yudhistira",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            //Border card
            const ExpandableCard(title: "Tanggal Lahir", detail: "24 Maret 2005"),
            const SizedBox(height: 16),
            const ExpandableCard(title: "Email", detail: "230103089@mhs.udb.ac.id"),
            const SizedBox(height: 16),
            const ExpandableCard(title: "Alamat", detail: "Ngabeanom Rt02 Rw05, Jetis, Baki, Sukoharjo"),
            const SizedBox(height: 16),
            const ExpandableCard(title: "Hobi", detail: "Memancing, Bilyard, Badminton"),
            const SizedBox(height: 16), 
          
            //border bottom
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.black,
              alignment: Alignment.bottomCenter,
              child: const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Tiktok',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
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


// Widget agar bisa diklik
class ExpandableCard extends StatefulWidget {
  final String title;
  final String detail;

  const ExpandableCard({super.key, required this.title, required this.detail});

  @override
  // ignore: library_private_types_in_public_api
  _ExpandableCardState createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard> {
  bool isExpanded = false; // Kontrol tampilan saat diklik

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded; // mengubah tampilan saat diklik
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            // Icon 
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              alignment: Alignment.center,
              child: Icon(Icons.person, color: Colors.blue[900], size: 30,),
            ),
            const SizedBox(width: 12),
            // Teks Judul Border
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min, // menyesuaikan tinggi dengan isi
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  if (isExpanded) // Jika diklik, tampilkan detail
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text(
                        widget.detail,
                        style: const TextStyle(fontSize: 14, color: Colors.white),
                        softWrap: true, // Agar teks turun ke bawah jika panjang
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


