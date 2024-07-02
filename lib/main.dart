import 'package:flutter/material.dart';
import 'package:flutter_accountmanager/data/appcolors.dart';
import 'package:flutter_accountmanager/pages/myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
      theme: MyAppThemes.lighTheme,
      darkTheme: MyAppThemes.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  // ignore: unused_field
  ThemeMode _themeMode = ThemeMode.system;

  // use to switch from light mode to dark mode
  void _toggleTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    // bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 56, 64, 112),
        centerTitle: true,
        title: const Text('Password Manager', style: TextStyle(color: Colors.white),
        ),
        // COME BACK HERE TO ENABLE THEMEMODE SWITCHING
        //actions: [
        //  Switch(
        //    value: isDarkMode, 
        //    onChanged: (isOn) {
        //      isOn ? _toggleTheme(ThemeMode.dark) : _toggleTheme(ThemeMode.light);
        //    }),
        //],
      ),
      body: const MyHomePage(),
    );
  }
}