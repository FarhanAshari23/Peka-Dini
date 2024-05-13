// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:peka_dini/my_flutter_app_icons.dart';

import 'package:peka_dini/views/contact.dart';
import 'package:peka_dini/views/education.dart';
import 'package:peka_dini/views/prevent.dart';
import 'package:peka_dini/views/support.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> Screens = const [
      PreventView(),
      SupportView(),
      EducationView(),
      ContactView()
    ];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffEAB1B8),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/pictures/Logo.png',
              height: 30,
              width: 30,
            ),
            const SizedBox(width: 10),
            const Text(
              "Peka Dini",
              style: TextStyle(
                color: Color(0xff6E260E),
              ),
            ),
          ],
        ),
      ),
      body: Screens[currentIndex],
      bottomNavigationBar: Container(
        color: const Color(0xffEAB1B8),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: GNav(
            onTabChange: (int i) {
              setState(() {
                currentIndex = i;
              });
            },
            backgroundColor: const Color(0xffEAB1B8),
            color: const Color(0xff904a32),
            activeColor: const Color(0xff6E260E),
            tabBackgroundColor: const Color(0xffe29aa3),
            gap: 14,
            textStyle: const TextStyle(
              color: Color(0xff6E260E),
              fontWeight: FontWeight.w600,
            ),
            padding: const EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: MyFlutterApp.preventif_baru,
                text: 'Pencegahan',
              ),
              GButton(icon: MyFlutterApp.penanganan, text: 'Penanganan'),
              GButton(icon: MyFlutterApp.edukasi, text: 'Edukasi'),
              GButton(icon: MyFlutterApp.kontak_darurat_baru, text: 'Kontak')
            ],
          ),
        ),
      ),
    );
  }
}
