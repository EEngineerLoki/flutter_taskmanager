import 'package:flutter/material.dart';
import 'package:flutter_accountmanager/data/appcolors.dart';
import 'package:flutter_accountmanager/pages/myhomepage.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  
  await Hive.initFlutter();

  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      theme: MyAppThemes.lighTheme,
      darkTheme: MyAppThemes.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
