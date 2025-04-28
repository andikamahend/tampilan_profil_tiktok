import 'package:flutter/material.dart';
import 'package:tampilan_profil_tiktok/hide_password.dart';
import 'profil_tiktok.dart';


class Login extends StatelessWidget {
  const Login({super.key});

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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilTiktok()),
                  );
                },
              child: const Text("Login", style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}