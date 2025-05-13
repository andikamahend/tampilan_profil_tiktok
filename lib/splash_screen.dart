import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tampilan_profil_tiktok/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Get.off(()=> Login());
      // final box = GetStorage();
      // String? statusUsername = box.read('username');

      // if (statusUsername != null){
      //   Get.off(()=> Login());
      // } else {
      //   Get.off(()=> AnimatedBottom());
      // }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Logo TI 23A3"),
          CircularProgressIndicator()
        ],
      ),),
    );
  }
}
