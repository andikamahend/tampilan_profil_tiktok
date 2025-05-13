import 'package:flutter/material.dart';
import 'package:tampilan_profil_tiktok/gantitema.dart';
import 'package:tampilan_profil_tiktok/login.dart';
import 'package:tampilan_profil_tiktok/text_field_bundar.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';



class ProfilTiktok extends StatefulWidget {
  const ProfilTiktok({super.key});

  @override
  State<ProfilTiktok> createState() => _ProfilTiktokState();
}

class _ProfilTiktokState extends State<ProfilTiktok> {
  Color backgroundColor = Colors.black;

  void updateTema(bool isDark) {
    setState(() {
      backgroundColor = isDark ? Colors.black : Colors.grey[800]!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //AppBar
              foto_profil(),
              followers(),
              // Icon bar (optional, dummy)
              icons(),
              // kolom foto
              gambar()
            ],
          ),
        ),
      ),
    );
  }

Widget gambar() {
  final images = [
    'images/1.jpg',
    'images/2.jpg',
    'images/3.jpg',
    'images/4.jpg',
    'images/5.jpg',
    'images/6.jpg',
  ];

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Wrap(
      spacing: 5,
      runSpacing: 5,
      children: images.map((imagePath) {
        return Container(
          width: MediaQuery.of(context).size.width / 3 - 14, // 3 kolom
          height: MediaQuery.of(context).size.width / 3 - 14,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey[800],
          ),
        );
      }).toList(),
    ),
  );
}


  Column icons() {
    return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.grid_on, color: Colors.white),
                  Icon(Icons.lock_outline, color: Colors.white),
                  Icon(Icons.crop_square, color: Colors.white),
                  Icon(Icons.content_cut, color: Colors.white),
                  Icon(Icons.favorite_border, color: Colors.white),
                ],
              ),
              SizedBox(height: 10),
            ],
          );
  }

  Column followers() {
    return Column(
            children: [
              Center(
                child: Text(
                  '@andika.mahend',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Following',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Text(
                        '1865k',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Followers',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Text(
                        '8k',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Likes',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                    // Aksi edit profile
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[800], 
                      foregroundColor: Colors.white,     
                    ),
                    child: Text("Edit Profile"),
                  ),
                  SizedBox(width: 10), // Jarak antar tombol
                  ElevatedButton(
                    onPressed: () {
                    final box = GetStorage();
                    box.remove('username');

                    Get.off(()=> Login());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[800],
                      foregroundColor: Colors.white,
                    ),
                    child: Text("Log out"),
                  ),
                  SizedBox(width: 10), 
                  // Tombol Icon Person Add 
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[800],
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Icon(Icons.person_add, size: 18),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Aksi saat tombol ditekan
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[800],
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      '+ Add [+]',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Gantitema(onTemaChange: updateTema),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  bundar(),
                  const SizedBox(height: 10,)
                ],
              ),
            ],
          );
  }

  Column foto_profil() {
    return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '@andika.mahend',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(Icons.arrow_drop_down, color: Colors.white),
                    ],
                  ),
                ),
              ),
              
              // Profile Info
              SizedBox(height: 20),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/profil.jpg'),
                backgroundColor: Colors.grey[800],
              ),
              SizedBox(height: 10),
            ],
          );
  }
}


