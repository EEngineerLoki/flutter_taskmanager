import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_accountmanager/pages/myhomepage.dart';
import 'package:flutter_accountmanager/pages/settingspage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int currentIndex = 0;

  final List _pages = [
    const MyHomePage(),
    const SettingsPage()
  ];

  void pagesNavigate(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 56, 64, 112),
        centerTitle: true,
        title: const Text('Password Manager', style: TextStyle(color: Colors.white),
        ),
      ),
      body: _pages[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: currentIndex,
        onTap: pagesNavigate,
        backgroundColor: const Color(0xFF191d30),
        color: const Color.fromARGB(255, 56, 64, 112),
        animationCurve: Curves.ease,
        animationDuration: const Duration(milliseconds: 300),
        items: const [
          Icon(Icons.home, color: Colors.amber, size: 35,),
          Icon(Icons.settings, color: Colors.amber, size: 35,)
        ],
      ),
    );
  }
}