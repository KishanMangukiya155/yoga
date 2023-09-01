import 'package:flutter/material.dart';
import 'package:yoga/page1.dart';
import 'package:yoga/page2.dart';

class Bottombar extends StatefulWidget {
  Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int home = 0;
  List screen = [
    Page1(),
    Page2(),
    Page1(),
    Page2(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[home],
      bottomNavigationBar: BottomNavigationBar(
          unselectedIconTheme: IconThemeData(color: Colors.black12),
          selectedIconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          fixedColor: Colors.black,
          elevation: 50,
          currentIndex: home,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              home = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.border_all_rounded), label: 'Coures'),
            BottomNavigationBarItem(
                icon: Icon(Icons.stacked_bar_chart), label: 'stailies'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'personal'),
          ]),
    );
  }
}
