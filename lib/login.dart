import 'package:flutter/material.dart';
import 'package:tampilan_profil_tiktok/animated_bottom.dart';
import 'package:tampilan_profil_tiktok/hide_password.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class Login extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text ("Halaman Login", 
        style: TextStyle(
          color: Colors.red,
          fontSize: 30,
          fontWeight: FontWeight.bold
        ),
        ),
      backgroundColor: const Color.fromARGB(255, 0, 59, 177),
      ),
            body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _usernameController,
            ),
            TextField(
              controller: _passwordController,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail),
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                ),
                labelText: "Email",
              ),
            ),
            const SizedBox(height: 10,),
            Passwordhide(),
            const SizedBox(height: 20,),

            ElevatedButton(
              onPressed: () {
                final box = GetStorage();
                box.write('username', _usernameController.text);
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => ProfilTiktok()),
                  // );
                  Get.to(()=> AnimatedBottom());
                  // Get.snackbar(
                  //   "Login",
                  //   "Berhasil login",
                  // );
                },
              child: const Text("Login", style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}