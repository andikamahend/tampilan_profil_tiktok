import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:tampilan_profil_tiktok/message.dart';
import 'package:tampilan_profil_tiktok/peraturan.dart';
import 'package:tampilan_profil_tiktok/profil_tiktok.dart';
import 'package:tampilan_profil_tiktok/tentang_saya.dart';

class AnimatedBottom extends StatefulWidget {
  const AnimatedBottom({super.key});

  @override
  State<AnimatedBottom> createState() => _AnimatedBottomState();
}

class _AnimatedBottomState extends State<AnimatedBottom> {
  int _currentIndex = 0;

  final List<IconData> _icons = [
    Icons.home,
    Icons.person,
    Icons.message,
    Icons.warning
  ];

  final List<Widget> _pages = [
    const ProfilTiktok(),
    const TentangSaya(),
    Message(),
    Peraturan()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aksi FAB (bisa disesuaikan)
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.purple,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: _icons,
        activeIndex: _currentIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (Index) => setState(() => _currentIndex = Index),
        activeColor: Colors.purple,
        inactiveColor: Colors.grey,
      ),
    );
  }
}
